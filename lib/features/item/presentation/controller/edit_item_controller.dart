import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/item/application/item_service.dart';
import 'package:stockify/features/item/data/dto/request/update_item_request.dart';
import 'package:stockify/features/item/presentation/controller/item_controller.dart';
import 'package:stockify/features/item/presentation/state/edit_item_state.dart';
import 'package:stockify/features/master_data/application/item_type_service.dart';
import 'package:stockify/features/master_data/application/unit_service.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

final editItemControllerProvider = StateNotifierProvider.autoDispose
    .family<EditItemController, EditItemState, String>(
      (ref, itemId) => EditItemController(ref, itemId),
    );

class EditItemController extends StateNotifier<EditItemState> {
  final Ref ref;
  final String itemId;

  EditItemController(this.ref, this.itemId) : super(const EditItemState()) {
    loadData();
  }

  Future<void> loadData() async {
    state = state.copyWith(isLoading: true);
    try {
      final itemResult = await ref
          .read(itemServiceProvider)
          .getItemById(itemId);
      itemResult.when(
        (success) {
          state = state.copyWith(
            item: success,
            currentImageUrl: success.image.isEmpty ? null : success.image,
          );
        },
        (error) {
          state = state.copyWith(errorLoading: error.message);
        },
      );
      await Future.wait([_loadItemTypes(), _loadUnits()]);
    } catch (e) {
      state = state.copyWith(errorLoading: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> _loadItemTypes() async {
    try {
      final result = await ref
          .read(itemTypeServiceProvider)
          .getItemTypes(limit: 100);
      result.when(
        (success) => state = state.copyWith(itemTypes: success.data ?? []),
        (error) => state = state.copyWith(errorLoading: error.message),
      );
    } catch (e) {
      state = state.copyWith(errorLoading: e.toString());
    }
  }

  Future<void> _loadUnits() async {
    try {
      final result = await ref.read(unitServiceProvider).getUnits(limit: 100);
      result.when(
        (success) => state = state.copyWith(units: success.data ?? []),
        (error) => state = state.copyWith(errorLoading: error.message),
      );
    } catch (e) {
      state = state.copyWith(errorLoading: e.toString());
    }
  }

  void setItemName(String name) => state = state.copyWith(itemName: name);
  void setMinimumStock(int stock) =>
      state = state.copyWith(minimumStock: stock);
  void setSelectedItemType(ItemTypeResponse? itemType) =>
      state = state.copyWith(selectedItemType: itemType);
  void setSelectedUnit(UnitResponse? unit) =>
      state = state.copyWith(selectedUnit: unit);
  void setImageFile(File? file) => state = state.copyWith(imageFile: file);

  Future<void> updateItem(String itemId) async {
    try {
      state = state.copyWith(isUpdating: true, errorUpdating: null);
      final request = UpdateItemRequest(
        itemName:
            state.itemName != state.item?.itemName ? state.itemName : null,
        typeId:
            state.selectedItemType?.typeId != state.item?.typeId
                ? state.selectedItemType?.typeId
                : null,
        unitId:
            state.selectedUnit?.unitId != state.item?.unitId
                ? state.selectedUnit?.unitId
                : null,
        minimumStock:
            state.minimumStock != state.item?.minimumStock
                ? state.minimumStock
                : null,
        image:
            state.imageFile != null
                ? await MultipartFile.fromFile(
                  state.imageFile!.path,
                  filename: state.imageFile!.path.split('/').last,
                )
                : null,
      );
      final result = await ref
          .read(itemServiceProvider)
          .updateItem(itemId, request);
      result.when(
        (success) {
          ref.read(itemControllerProvider.notifier).updateExistingItem(success);
          state = state.copyWith(isUpdating: false);
        },
        (error) =>
            state = state.copyWith(
              isUpdating: false,
              errorUpdating: error.message,
            ),
      );
    } catch (e) {
      state = state.copyWith(isUpdating: false, errorUpdating: e.toString());
    }
  }
}
