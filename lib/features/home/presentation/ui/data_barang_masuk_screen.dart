import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../transactions/provider/transaction_provider.dart';

class DataBarangMasukScreen extends ConsumerWidget {
  const DataBarangMasukScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaksi = ref.watch(barangMasukProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Data Barang Masuk')),
      body: transaksi.when(
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, i) {
            final t = list[i];
            return ListTile(
              title: Text(t.itemName),
              subtitle: Text('Jumlah: ${t.quantity}'),
              trailing: Text('${t.createdAt.toLocal().toString().split(" ").first}'),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
