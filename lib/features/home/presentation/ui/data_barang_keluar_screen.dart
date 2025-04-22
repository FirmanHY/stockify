import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/transactions/provider/transaction_provider.dart';

class DataBarangKeluarScreen extends ConsumerWidget {
  const DataBarangKeluarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaksi = ref.watch(barangKeluarProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Barang Keluar'),
      ),
      body: transaksi.when(
        data: (list) => list.isEmpty
            ? const Center(child: Text('Tidak ada data barang keluar.'))
            : ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, i) {
                  final t = list[i];
                  return ListTile(
                    title: Text(t.itemName),
                    subtitle: Text('Jumlah: ${t.quantity}\n${t.description}'),
                    trailing: Text(
                      t.createdAt.toLocal().toString().split(" ").first,
                    ),
                  );
                },
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
