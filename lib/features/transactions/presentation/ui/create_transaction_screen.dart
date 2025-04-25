import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/loading_overlay/loading_overlay.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/transactions/presentation/controller/create_transaction_controller.dart';
import 'package:stockify/features/transactions/presentation/state/create_transaction_state.dart';

class CreateTransactionScreen extends ConsumerStatefulWidget {
  final TransactionType transactionType;

  const CreateTransactionScreen({super.key, required this.transactionType});

  @override
  ConsumerState<CreateTransactionScreen> createState() =>
      _CreateTransactionScreenState();
}

class _CreateTransactionScreenState
    extends ConsumerState<CreateTransactionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _quantityController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _listener() {
    ref.listen<CreateTransactionState>(
      createTransactionControllerProvider(widget.transactionType),
      (prev, next) {
        if (!mounted) return;
        final snackBarService = ref.read(snackBarServiceProvider);
        if (next.errorCreating != null &&
            next.errorCreating != prev?.errorCreating) {
          snackBarService.showError(context, next.errorCreating!);
          ref
              .read(
                createTransactionControllerProvider(
                  widget.transactionType,
                ).notifier,
              )
              .clearErrorCreating();
        }
        if (next.errorGettingItems != null &&
            next.errorGettingItems != prev?.errorGettingItems) {
          snackBarService.showError(context, next.errorGettingItems!);
          ref
              .read(
                createTransactionControllerProvider(
                  widget.transactionType,
                ).notifier,
              )
              .clearErrorGettingItems();
        }
        if (!next.isCreating &&
            next.errorCreating == null &&
            prev?.isCreating == true) {
          snackBarService.showSuccess(
            context,
            'Transaksi berhasil ditambahkan',
          );
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    final state = ref.watch(
      createTransactionControllerProvider(widget.transactionType),
    );
    final controller = ref.read(
      createTransactionControllerProvider(widget.transactionType).notifier,
    );

    if (state.isLoading && state.items.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.transactionType == TransactionType.IN
              ? 'Tambah Barang Masuk'
              : 'Tambah Barang Keluar',
        ),
      ),
      body: LoadingOverlay(
        isLoading: state.isCreating,
        message: 'Menambahkan transaksi...',
        child: Padding(
          padding: const EdgeInsets.all(kMedium),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: kMedium),
                DropdownButtonFormField<ItemResponse>(
                  decoration: const InputDecoration(labelText: 'Pilih Barang'),
                  value: state.selectedItem,
                  items:
                      state.items
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item.itemName,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          )
                          .toList(),
                  onChanged: controller.setSelectedItem,
                  validator:
                      (value) => value == null ? 'Barang wajib dipilih' : null,
                ),
                const SizedBox(height: kMedium),
                InkWell(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: state.date ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (selectedDate != null) {
                      controller.setDate(selectedDate);
                    }
                  },
                  child: InputDecorator(
                    decoration: const InputDecoration(labelText: 'Tanggal'),
                    child: Text(
                      state.date != null
                          ? DateFormat('dd/MM/yyyy').format(state.date!)
                          : 'Pilih tanggal',
                    ),
                  ),
                ),
                const SizedBox(height: kMedium),
                TextFormField(
                  controller: _quantityController,
                  decoration: const InputDecoration(labelText: 'Jumlah'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Jumlah wajib diisi';
                    final intValue = int.tryParse(value);
                    if (intValue == null || intValue <= 0) {
                      return 'Jumlah harus bilangan bulat positif';
                    }
                    if (widget.transactionType == TransactionType.OUT &&
                        state.selectedItem != null &&
                        intValue > state.selectedItem!.stock) {
                      return 'Jumlah melebihi stok saat ini';
                    }
                    return null;
                  },
                  onChanged:
                      (value) =>
                          controller.setQuantity(int.tryParse(value) ?? 0),
                ),
                const SizedBox(height: kMedium),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Deskripsi'),
                  maxLines: 3,
                  onChanged: controller.setDescription,
                ),
                const SizedBox(height: kMedium),
                if (state.selectedItem != null)
                  InputDecorator(
                    decoration: const InputDecoration(
                      labelText: 'Stok Saat Ini',
                    ),
                    child: Text(state.selectedItem!.stock.toString()),
                  ),
                const SizedBox(height: kMedium),
                if (state.selectedItem != null && state.quantity > 0)
                  InputDecorator(
                    decoration: const InputDecoration(
                      labelText: 'Stok Setelah Transaksi',
                    ),
                    child: Text(
                      widget.transactionType == TransactionType.IN
                          ? (state.selectedItem!.stock + state.quantity)
                              .toString()
                          : (state.selectedItem!.stock - state.quantity)
                              .toString(),
                    ),
                  ),
                const SizedBox(height: kMedium),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      if (state.date == null) {
                        ref
                            .read(snackBarServiceProvider)
                            .showError(context, 'Tanggal wajib dipilih');
                        return;
                      }
                      controller.createTransaction();
                    }
                  },
                  child: const Text('Tambah Transaksi'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
