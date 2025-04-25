import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/features/item/application/item_service.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/transactions/application/transaction_service.dart';
import 'package:stockify/features/transactions/presentation/controller/transaction_controller.dart';
import 'package:stockify/features/transactions/presentation/state/create_transaction_state.dart';

final createTransactionControllerProvider = StateNotifierProvider.family
    .autoDispose<
      CreateTransactionController,
      CreateTransactionState,
      TransactionType
    >(
      (ref, transactionType) =>
          CreateTransactionController(ref, transactionType),
    );

class CreateTransactionController
    extends StateNotifier<CreateTransactionState> {
  final Ref ref;
  final TransactionType transactionType;

  CreateTransactionController(this.ref, this.transactionType)
    : super(CreateTransactionState(transactionType: transactionType)) {
    loadItems();
  }

  Future<void> loadItems() async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await ref
          .read(itemServiceProvider)
          .getItems(page: 1, limit: 100);
      result.when(
        (success) => state = state.copyWith(items: success.data ?? []),
        (error) => state = state.copyWith(errorGettingItems: error.message),
      );
    } catch (e) {
      state = state.copyWith(errorGettingItems: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void setSelectedItem(ItemResponse? item) =>
      state = state.copyWith(selectedItem: item);
  void setDate(DateTime date) => state = state.copyWith(date: date);
  void setQuantity(int quantity) => state = state.copyWith(quantity: quantity);
  void setDescription(String description) =>
      state = state.copyWith(description: description);

  Future<void> createTransaction() async {
    if (state.selectedItem == null ||
        state.date == null ||
        state.quantity <= 0) {
      state = state.copyWith(
        errorCreating: 'Lengkapi semua field dengan benar',
      );
      return;
    }

    state = state.copyWith(isCreating: true, errorCreating: null);
    try {
      final result = await ref
          .read(transactionServiceProvider)
          .createTransaction(
            itemId: state.selectedItem!.itemId,
            date: state.date!,
            quantity: state.quantity,
            transactionType: state.transactionType,
            description: state.description,
          );
      result.when(
        (success) {
          ref.read(transactionControllerProvider.notifier).refreshData();
          state = state.copyWith(isCreating: false);
        },
        (failure) {
          state = state.copyWith(
            isCreating: false,
            errorCreating: failure.message,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(isCreating: false, errorCreating: e.toString());
    }
  }

  void clearErrorGettingItems() =>
      state = state.copyWith(errorGettingItems: null);
  void clearErrorCreating() => state = state.copyWith(errorCreating: null);
}
