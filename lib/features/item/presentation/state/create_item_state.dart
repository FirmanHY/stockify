import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

part 'create_item_state.freezed.dart';

@freezed
abstract class CreateItemState with _$CreateItemState {
  const factory CreateItemState({
    @Default([]) List<ItemTypeResponse> itemTypes,
    @Default([]) List<UnitResponse> units,
    ItemTypeResponse? selectedItemType,
    UnitResponse? selectedUnit,
    @Default('') String itemName,
    @Default(0) int minimumStock,
    File? imageFile,
    @Default(false) bool isLoading,
    @Default(false) bool isCreating,
    String? errorGettingUnit,
    String? errorGettingTypes,
    String? errorCreating,
  }) = _CreateItemState;
}
