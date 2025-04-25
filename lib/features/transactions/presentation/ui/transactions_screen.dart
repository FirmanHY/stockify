import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/enums/role.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/dialog_service.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/reports/presentation/controller/report_controller.dart';
import 'package:stockify/features/reports/presentation/state/report_state.dart';
import 'package:stockify/features/transactions/presentation/controller/transaction_controller.dart';
import 'package:stockify/features/transactions/presentation/state/transaction_state.dart';

class TransactionsScreen extends ConsumerStatefulWidget {
  const TransactionsScreen({super.key});

  @override
  ConsumerState<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends ConsumerState<TransactionsScreen>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  late TabController _tabController;
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(transactionControllerProvider);
      if (state.transactions.isEmpty && !state.isLoading) {
        ref.read(transactionControllerProvider.notifier).loadInitialData();
      }
    });
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _setupListener();
    final state = ref.watch(transactionControllerProvider);
    final controller = ref.read(transactionControllerProvider.notifier);
    final role = ref.watch(authProvider.select((a) => a.role));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaksi"),
        actions: [
          ReportButton(
            onPressed: () {
              final transactionState = ref.read(transactionControllerProvider);
              final type = transactionState.typeFilter ?? 'in';
              final startDate =
                  transactionState.startDate?.toIso8601String().split('T')[0] ??
                  '';
              final endDate =
                  transactionState.endDate?.toIso8601String().split('T')[0] ??
                  '';

              ref
                  .read(reportControllerProvider.notifier)
                  .generateReportTransaction(
                    type: type,
                    startDate: startDate,
                    endDate: endDate,
                  );
            },
          ),
          if ((role == Role.admin || role == Role.warehouseAdmin))
            AddButton(
              onPressed: () {
                final state = ref.read(transactionControllerProvider);
                final typeStr = state.typeFilter ?? 'in';
                context.pushNamed(
                  RouteName.createTransaction,
                  pathParameters: {'type': typeStr},
                );
              },
            ),
          const SizedBox(width: kSmall),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: AppColors.primaryColor,
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.whiteColor,
              unselectedLabelColor: Colors.white70,
              indicatorColor: AppColors.whiteColor,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: AppColors.whiteColor, width: 2.5),
                insets: EdgeInsets.only(bottom: kXSmall),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(text: 'Barang Masuk'),
                Tab(text: 'Barang Keluar'),
              ],
              onTap: (index) {
                final type =
                    index == 0 ? TransactionType.IN : TransactionType.OUT;
                controller.updateTypeFilter(type.toValue());
              },
            ),
          ),
        ),
      ),
      body: LoadingOverlay(
        isLoading: state.isDeleting,
        message:
            state.isDeleting ? 'Menghapus transaksi...' : 'Membuat laporan...',
        child: RefreshIndicator(
          color: AppColors.primaryColor,
          onRefresh: () => controller.refreshData(),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: StickySearchBarDelegate(
                  height: 140,
                  child: Padding(
                    padding: const EdgeInsets.all(kMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Cari Transaksi'.hardcoded,
                            suffixIcon: const Icon(Icons.search),
                          ),
                          onChanged: controller.updateSearchQuery,
                        ),
                        const SizedBox(height: kSmall),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Filter By',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(width: kSmall),
                            if (_startDate == null && _endDate == null)
                              FilterChip(
                                label: const Text(
                                  'Tanggal',
                                  style: TextStyle(fontSize: kFontSizeXXS),
                                ),
                                selected: false,
                                onSelected: (_) {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder:
                                        (context) => DateFilterBottomSheet(
                                          initialStartDate: _startDate,
                                          initialEndDate: _endDate,
                                          onSubmit: (start, end) {
                                            setState(() {
                                              _startDate = start;
                                              _endDate = end;
                                            });
                                            controller.updateDateRange(
                                              start,
                                              end,
                                            );
                                          },
                                        ),
                                  );
                                },
                                selectedColor: AppColors.primaryColor30,
                                checkmarkColor: AppColors.primaryColor,
                                shape: StadiumBorder(
                                  side: BorderSide(color: Colors.grey),
                                ),
                              ),
                            if (_startDate != null && _endDate != null) ...[
                              const SizedBox(width: kSmall),
                              Text(
                                '${DateFormat('dd/MM/yyyy').format(_startDate!)} - ${DateFormat('dd/MM/yyyy').format(_endDate!)}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _startDate = null;
                                    _endDate = null;
                                  });
                                  controller.updateDateRange(null, null);
                                },
                                icon: const Icon(
                                  Icons.close_rounded,
                                  size: kMedium,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              state.isLoading && state.transactions.isEmpty
                  ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const InventoryItemShimmer(),
                      childCount: 6,
                    ),
                  )
                  : state.transactions.isEmpty
                  ? SliverToBoxAdapter(
                    child:
                        state.error != null
                            ? ErrorStateWidget(
                              message: state.error!,
                              onRetry: controller.loadInitialData,
                              buttonText: 'Coba Lagi',
                            )
                            : state.searchQuery != null &&
                                state.searchQuery!.isNotEmpty &&
                                state.searchQuery!.length < 3
                            ? const EmptyStateWidget(
                              title: 'Pencarian tidak valid',
                              message:
                                  'Masukkan minimal 3 karakter untuk mencari.',
                            )
                            : const EmptyStateWidget(
                              title: 'Tidak ada data',
                              message:
                                  'Coba ubah kata kunci pencarian atau filter.',
                            ),
                  )
                  : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index == state.transactions.length &&
                            state.isLoading) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(kMedium),
                              child: InventoryItemShimmer(),
                            ),
                          );
                        }
                        final transaction = state.transactions[index];
                        return Column(
                          children: [
                            InventoryItem(
                              imageUrl: transaction.image,
                              itemName: transaction.itemName,
                              quantityLabel: 'Jumlah: ${transaction.quantity}',
                              minStock: 0,
                              categoryLabel: "",
                              stock: transaction.currentStock,
                              icon: Icons.delete,
                              transactionDate: DateFormat(
                                'dd/MM/yyyy',
                              ).format(transaction.date),
                              onPressedActionIcon:
                                  (role == Role.admin ||
                                          role == Role.warehouseAdmin)
                                      ? () async {
                                        final confirmed = await ref
                                            .read(dialogServiceProvider)
                                            .showConfirmationDialog(
                                              context: context,
                                              title: 'Hapus Satuan Barang',
                                              content:
                                                  'Apakah kamu yakin ingin menghapus satuan barang ini?',
                                              confirmText: 'Hapus',
                                              cancelText: 'Batal',
                                              confirmColor:
                                                  AppColors.dangerColor,
                                              confirmIcon: Icons.delete_forever,
                                            );
                                        if (confirmed == true) {
                                          ref
                                              .read(
                                                transactionControllerProvider
                                                    .notifier,
                                              )
                                              .deleteTransaction(
                                                transaction.transactionId,
                                              );
                                        }
                                      }
                                      : null,
                            ),
                            if (index < state.transactions.length - 1)
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: AppColors.borderColor,
                              ),
                          ],
                        );
                      },
                      childCount:
                          state.transactions.length + (state.isLoading ? 1 : 0),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  void _setupListener() {
    ref.listen<TransactionState>(transactionControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);

      if (next.error != null && next.error != prev?.error) {
        snackBarService.showError(context, next.error!);
      }
      if (next.deleteError != null && next.deleteError != prev?.deleteError) {
        snackBarService.showError(context, next.deleteError!);
        ref.read(transactionControllerProvider.notifier).clearDeleteError();
      }
      ref.listen<ReportState>(reportControllerProvider, (prev, next) {
        final snackBarService = ref.read(snackBarServiceProvider);
        if (next.error != null && next.error != prev?.error) {
          snackBarService.showError(context, next.error!);
        }
        if (next.isSuccess && !prev!.isSuccess) {
          snackBarService.showSuccess(context, 'Report berhasil digenerate!');
        }
      });
      if (next.isDeleting == false &&
          prev?.isDeleting == true &&
          next.deleteError == null) {
        snackBarService.showSuccess(context, 'Transaksi berhasil dihapus');
      }
    });
  }

  void _handleScroll() {
    final state = ref.read(transactionControllerProvider);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8 &&
        !_scrollController.position.outOfRange &&
        !_isLoadingMore) {
      if (!state.isLoading &&
          state.pagination != null &&
          state.currentPage < state.pagination!.totalPages) {
        _isLoadingMore = true;
        ref.read(transactionControllerProvider.notifier).loadMore().then((_) {
          _isLoadingMore = false;
        });
      }
    }
  }
}
