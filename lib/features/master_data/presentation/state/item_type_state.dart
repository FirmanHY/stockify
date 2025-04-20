import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';

part 'item_type_state.freezed.dart';

@freezed
abstract class ItemTypeState with _$ItemTypeState {
  const factory ItemTypeState({
    @Default([]) List<ItemTypeResponse> itemTypes,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(10) int limit,
    String? searchQuery,
    Pagination? pagination,
  }) = _ItemTypeState;

  const ItemTypeState._();
}
