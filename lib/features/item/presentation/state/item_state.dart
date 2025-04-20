import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';

part 'item_state.freezed.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState({
    @Default([]) List<ItemResponse> items,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(10) int limit,
    String? searchQuery,
    bool? lowStockOnly,
    Pagination? pagination,
  }) = _ItemState;

  const ItemState._();
}
