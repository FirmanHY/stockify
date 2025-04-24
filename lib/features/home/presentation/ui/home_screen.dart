import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/core/constants/assets.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/widgets/empty_state_widget/empty_state_widget.dart';
import 'package:stockify/core/widgets/error_state_widget/error_state_widget.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/features/summary/presentation/widget/summary_card.dart';
import 'package:stockify/features/item/data/repository/item_repository.dart';
import 'package:stockify/features/summary/data/repository/summary_repository.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(summaryDataProvider);
    final lowStockItems = ref.watch(lowStockItemsProvider);

    return Scaffold(
appBar: PreferredSize(
  preferredSize: const Size.fromHeight(kDoubleExtraLarge + kMedium),
  child: Container(
    color: AppColors.primaryColor,
    padding: const EdgeInsets.only(bottom: kSmall, right: kSmall, left: kSmall),
    child: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: kDoubleExtraLarge + kSmall,
            height: kDoubleExtraLarge + kSmall,
            padding: const EdgeInsets.all(kXSmall),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.whiteColor, width: 2),
              borderRadius: BorderRadius.circular(kSmall),
            ),
            child: Image.asset(
              Assets.splashLogo,
              fit: BoxFit.contain,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.logout_rounded,
              color: AppColors.whiteColor,
              size: kLargeMedium + kSmall,
              weight: kLargeMedium + kSmall,
            ),
            onPressed: () {
              ref.read(authProvider.notifier).logout();
              context.go(RouteName.login);
            },
          ),
        ],
      ),
    ),
  ),
),

      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(summaryDataProvider);
          ref.invalidate(lowStockItemsProvider);
        },
        child: ListView(
          padding: const EdgeInsets.all(kMedium),
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
              loading:
                  () => const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SummaryCard(
                        icon: Icons.inventory,
                        label: 'Data Barang',
                        value: 0,
                      ),
                      SummaryCard(
                        icon: Icons.move_to_inbox,
                        label: 'Barang Masuk',
                        value: 0,
                      ),
                      SummaryCard(
                        icon: Icons.outbox,
                        label: 'Barang Keluar',
                        value: 0,
                      ),
                    ],
                  ),
              error:
                  (err, _) => ErrorStateWidget(
                    message: err.toString(),
                    onRetry: () => ref.refresh(summaryDataProvider),
                    buttonText: 'Coba Lagi',
                  ),
            ),
            const SizedBox(height: kLarge),

            // Section: Low Stock Items
            Row(
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: AppColors.warningColor,
                ),
                const SizedBox(width: kSmall),
                Text(
                  'Stok mencapai batas minimum',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: kSmall),

            lowStockItems.when(
              data: (items) {
                if (items.isEmpty) {
                  return const EmptyStateWidget(
                    title: 'Tidak ada stok rendah',
                    message: 'Semua barang memiliki stok aman.',
                  );
                }
                return Column(
                  children:
                      items
                          .map(
                            (item) => ListTile(
                              title: Text(
                                item.itemName,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              subtitle: Text(
                                'Jenis: ${item.typeName}',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              trailing: Text(
                                'Stok: ${item.stock}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          )
                          .toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (err, _) => ErrorStateWidget(
                    message: err.toString(),
                    onRetry: () => ref.refresh(lowStockItemsProvider),
                    buttonText: 'Muat Ulang',
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
