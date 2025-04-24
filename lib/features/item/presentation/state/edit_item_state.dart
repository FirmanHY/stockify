// lib/features/item/presentation/state/edit_item_state.freezed.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

part 'edit_item_state.freezed.dart';

@freezed
abstract class EditItemState with _$EditItemState {
  const factory EditItemState({
    @Default(false) bool isLoading,
    @Default(false) bool isUpdating,
    String? errorLoading,
    String? errorUpdating,
    ItemResponse? item,
    @Default([]) List<ItemTypeResponse> itemTypes,
    @Default([]) List<UnitResponse> units,
    ItemTypeResponse? selectedItemType,
    UnitResponse? selectedUnit,
    String? itemName,
    int? minimumStock,
    File? imageFile,
    String? currentImageUrl,
  }) = _EditItemState;
}
