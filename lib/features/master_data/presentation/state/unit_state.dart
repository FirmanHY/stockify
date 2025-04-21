import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

part 'unit_state.freezed.dart';

@freezed
abstract class UnitState with _$UnitState {
  const factory UnitState({
    @Default([]) List<UnitResponse> units,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(10) int limit,
    String? searchQuery,
    Pagination? pagination,
    @Default(false) bool isCreating,
    String? createError,
    @Default(false) bool isUpdating,
    @Default(false) bool isDeleting,
    String? updateError,
    String? deleteError,
  }) = _UnitState;

  const UnitState._();
}
