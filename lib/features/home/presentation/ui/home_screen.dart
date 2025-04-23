// Tetap gunakan import seperti biasa
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/features/summary/provider/summary_provider.dart';
import 'package:stockify/features/summary/presentation/widget/summary_card.dart';
import 'package:stockify/features/item/provider/low_stock_items_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(summaryDataProvider);
    final lowStockItems = ref.watch(lowStockItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {
              ref.read(authProvider.notifier).logout();
              context.go(RouteName.login);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(summaryDataProvider);
          ref.invalidate(lowStockItemsProvider);
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            summary.when(
              data: (response) {
                final data = response.data;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SummaryCard(
                      icon: Icons.inventory,
                      label: 'Data Barang',
                      value: data.totalItems,
                    ),
                    SummaryCard(
                      icon: Icons.move_to_inbox,
                      label: 'Barang Masuk',
                      value: data.totalIn,
                    ),
                    SummaryCard(
                      icon: Icons.outbox,
                      label: 'Barang Keluar',
                      value: data.totalOut,
                    ),
                  ],
                );
              },
              loading: () => const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SummaryCard(icon: Icons.inventory, label: 'Data Barang', value: 0),
                  SummaryCard(icon: Icons.move_to_inbox, label: 'Barang Masuk', value: 0),
                  SummaryCard(icon: Icons.outbox, label: 'Barang Keluar', value: 0),
                ],
              ),
              error: (_, __) => const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SummaryCard(icon: Icons.inventory, label: 'Data Barang', value: 0),
                  SummaryCard(icon: Icons.move_to_inbox, label: 'Barang Masuk', value: 0),
                  SummaryCard(icon: Icons.outbox, label: 'Barang Keluar', value: 0),
                ],
              ),
            ),
            const SizedBox(height: 24),

            Row(
              children: const [
                Icon(Icons.warning_amber_rounded, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'Stok mencapai batas minimum',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 8),
            lowStockItems.when(
              data: (items) {
                if (items.isEmpty) {
                  return const Text('Tidak ada barang dengan stok rendah.');
                }
                return Column(
                  children: items
                      .map(
                        (item) => ListTile(
                          title: Text(item.itemName),
                          subtitle: Text('Jenis: ${item.typeName}'),
                          trailing: Text('Stok: ${item.stock}'),
                        ),
                      )
                      .toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => Text('Gagal memuat data: $err'),
            ),
          ],
        ),
      ),
    );
  }
}
