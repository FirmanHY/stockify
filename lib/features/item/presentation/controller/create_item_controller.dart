import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/item/application/item_service.dart';
import 'package:stockify/features/item/data/dto/request/create_item_request.dart';
import 'package:stockify/features/item/presentation/controller/item_controller.dart';
import 'package:stockify/features/item/presentation/state/create_item_state.dart';
import 'package:stockify/features/master_data/application/item_type_service.dart';
import 'package:stockify/features/master_data/application/unit_service.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

final createItemControllerProvider =
    StateNotifierProvider.autoDispose<CreateItemController, CreateItemState>(
      (ref) => CreateItemController(ref),
    );

class CreateItemController extends StateNotifier<CreateItemState> {
  final Ref ref;

  CreateItemController(this.ref) : super(const CreateItemState()) {
    loadData();
  }

  Future<void> loadData() async {
    state = state.copyWith(isLoading: true);

    await Future.wait([_loadItemTypes(), _loadUnits()]);

    state = state.copyWith(isLoading: false);
  }

  Future<void> _loadItemTypes() async {
    try {
      final result = await ref
          .read(itemTypeServiceProvider)
          .getItemTypes(limit: 100);
      result.when(
        (success) => state = state.copyWith(itemTypes: success.data ?? []),
        (error) => state = state.copyWith(errorGettingTypes: error.message),
      );
    } catch (e) {
      state = state.copyWith(errorGettingTypes: e.toString());
    }
  }

  Future<void> _loadUnits() async {
    try {
      final result = await ref.read(unitServiceProvider).getUnits(limit: 100);
      result.when(
        (success) => state = state.copyWith(units: success.data ?? []),
        (error) => state = state.copyWith(errorGettingUnit: error.message),
      );
    } catch (e) {
      state = state.copyWith(errorGettingUnit: e.toString());
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

  Future<void> createItem() async {
    try {
      state = state.copyWith(isCreating: true, errorCreating: null);
      MultipartFile? multipartFile;
      if (state.imageFile != null) {
        multipartFile = await MultipartFile.fromFile(
          state.imageFile!.path,
          filename: state.imageFile!.path.split('/').last,
        );
      }
      final request = CreateItemRequest(
        itemName: state.itemName,
        typeId: state.selectedItemType!.typeId,
        unitId: state.selectedUnit!.unitId,
        minimumStock: state.minimumStock,
        image: multipartFile,
      );
      final result = await ref.read(itemServiceProvider).createItem(request);
      result.when(
        (success) {
          ref.read(itemControllerProvider.notifier).refreshData();
          state = state.copyWith(isCreating: false);
        },
        (failure) =>
            state = state.copyWith(
              isCreating: false,
              errorCreating: failure.message,
            ),
      );
    } catch (e) {
      state = state.copyWith(isCreating: false, errorCreating: e.toString());
    }
  }

  void clearError() {
    state = state.copyWith(errorCreating: null);
  }

  void clearErrorGettingTypes() {
    state = state.copyWith(errorGettingTypes: null);
  }

  void clearErrorGettingUnit() {
    state = state.copyWith(errorGettingTypes: null);
  }
}
