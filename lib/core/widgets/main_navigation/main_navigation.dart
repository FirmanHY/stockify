import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/enums/role.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/theme/dimension.dart';

final navigationIndexProvider = StateProvider<int>((ref) => 0);

class MainNavigation extends ConsumerWidget {
  final Widget child;
  const MainNavigation({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationIndexProvider);
    final theme = Theme.of(context);
    final role = ref.watch(authProvider.select((a) => a.role));

    return Scaffold(
      body: child,
      bottomNavigationBar: _buildBottomNavBar(
        role,
        currentIndex,
        ref,
        context,
        theme,
      ),
    );
  }

  Widget _buildBottomNavBar(
    Role role,
    int currentIndex,
    WidgetRef ref,
    BuildContext context,
    ThemeData theme,
  ) {
    final navItems = <BottomNavigationBarItem>[];
    final routes = <String>[];

    switch (role) {
      case Role.admin:
      case Role.warehouseAdmin:
        navItems.addAll(_fullAccessNavItems);
        routes.addAll(_fullAccessRoutes);
        break;
      case Role.warehouseManager:
        navItems.addAll(_managerNavItems);
        routes.addAll(_managerRoutes);
        break;
      default:
        return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(index, ref, context, routes),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: theme.textTheme.labelSmall,
        unselectedLabelStyle: theme.textTheme.labelSmall,
        items: navItems,
      ),
    );
  }

  List<BottomNavigationBarItem> get _fullAccessNavItems => [
    _buildNavItem(
      icon: Icons.home_outlined,
      activeIcon: Icons.home_rounded,
      label: 'Beranda'.hardcoded,
    ),
    _buildNavItem(
      icon: Icons.inventory_2_outlined,
      activeIcon: Icons.inventory_2_rounded,
      label: 'Barang'.hardcoded,
    ),
    _buildNavItem(
      icon: Icons.folder_copy,
      activeIcon: Icons.folder_copy_rounded,
      label: 'Master'.hardcoded,
    ),
    _buildNavItem(
      icon: Icons.receipt_long_outlined,
      activeIcon: Icons.receipt_long_rounded,
      label: 'Transaksi'.hardcoded,
    ),
    _buildNavItem(
      icon: Icons.analytics_outlined,
      activeIcon: Icons.analytics_rounded,
      label: 'Laporan'.hardcoded,
    ),
  ];

  List<BottomNavigationBarItem> get _managerNavItems => [
    _buildNavItem(
      icon: Icons.home_outlined,
      activeIcon: Icons.home_rounded,
      label: 'Beranda'.hardcoded,
    ),
    _buildNavItem(
      icon: Icons.analytics_outlined,
      activeIcon: Icons.analytics_rounded,
      label: 'Laporan'.hardcoded,
    ),
  ];

  List<String> get _fullAccessRoutes => [
    RouteName.home,
    RouteName.items,
    RouteName.masterData,
    RouteName.transactions,
    RouteName.reports,
  ];

  List<String> get _managerRoutes => [RouteName.home, RouteName.reports];

  BottomNavigationBarItem _buildNavItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: kLargeMedium),
      activeIcon: Icon(activeIcon, size: kLargeMedium),
      label: label,
    );
  }

  void _onItemTapped(
    int index,
    WidgetRef ref,
    BuildContext context,
    List<String> routes,
  ) {
    ref.read(navigationIndexProvider.notifier).state = index;
    context.go(routes[index]);
  }
}
