import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/features/master_data/presentation/ui/item_type_list.dart';
import 'package:stockify/features/master_data/presentation/ui/units_list.dart';

class MasterDataScreen extends ConsumerWidget {
  const MasterDataScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Master Data'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Container(
              color: AppColors.primaryColor,
              child: const TabBar(
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: Colors.white70,
                indicatorColor: AppColors.whiteColor,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                    width: 2.5,
                  ),
                  insets: EdgeInsets.only(bottom: kXSmall),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [Tab(text: 'Tipe Barang'), Tab(text: 'Satuan Barang')],
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [ItemTypesList(), UnitsList()]),
      ),
    );
  }
}
