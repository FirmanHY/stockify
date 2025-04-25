import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';

part 'create_transaction_state.freezed.dart';

@freezed
abstract class CreateTransactionState with _$CreateTransactionState {
  const factory CreateTransactionState({
    @Default([]) List<ItemResponse> items,
    ItemResponse? selectedItem,
    DateTime? date,
    @Default(0) int quantity,
    String? description,
    required TransactionType transactionType,
    @Default(false) bool isLoading,
    @Default(false) bool isCreating,
    String? errorGettingItems,
    String? errorCreating,
  }) = _CreateTransactionState;
}
