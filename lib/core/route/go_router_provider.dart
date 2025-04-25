import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/core/enums/transaction_type.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/widgets/widgets.dart';
import 'package:stockify/features/home/presentation/ui/home_screen.dart';
import 'package:stockify/features/item/presentation/ui/create_item_screen.dart';
import 'package:stockify/features/item/presentation/ui/edit_item_screen.dart';
import 'package:stockify/features/item/presentation/ui/items_screen.dart';
import 'package:stockify/features/login/presentation/ui/login_screen.dart';
import 'package:stockify/features/master_data/presentation/ui/master_data_screen.dart';
import 'package:stockify/features/splash/presentation/ui/splash_screen.dart';
import 'package:stockify/features/transactions/presentation/ui/create_transaction_screen.dart';
import 'package:stockify/features/transactions/presentation/ui/transactions_screen.dart';
import 'package:stockify/features/users/presentation/ui/user_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authNotifier = ref.watch(authProvider);

  return GoRouter(
    initialLocation: RouteName.splash,
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
    redirect: (BuildContext context, GoRouterState state) async {
      final isChecking = authNotifier.isChecking;
      final isAuth = authNotifier.token != null;
      final currentLocation = state.matchedLocation;
      final isSplash = currentLocation == RouteName.splash;
      final isLogin = currentLocation == RouteName.login;

      debugPrint('''
  ======== ROUTING DEBUG ========
  Current Location: $currentLocation
  Auth Status: $isAuth
  Is Checking: $isChecking
  ===============================
  ''');

      if (isChecking) return null;

      if (isSplash) {
        return isAuth ? RouteName.home : RouteName.login;
      }

      if (isAuth) {
        if (isLogin || isSplash) {
          return RouteName.home;
        }
      } else {
        if (!isLogin) {
          return RouteName.login;
        }
      }

      return null;
    },
    routes: [
      GoRoute(
        path: RouteName.splash,
        name: RouteName.splash,
        pageBuilder:
            (context, state) =>
                MaterialPage(key: state.pageKey, child: const SplashScreen()),
      ),
      GoRoute(
        path: RouteName.login,
        name: RouteName.login,
        pageBuilder:
            (context, state) =>
                MaterialPage(key: state.pageKey, child: const LoginScreen()),
      ),
      GoRoute(
        path: RouteName.createItem,
        name: RouteName.createItem,
        pageBuilder:
            (context, state) => const MaterialPage(child: CreateItemScreen()),
      ),
      GoRoute(
        path: '/items/:itemId/edit',
        name: RouteName.editItem,
        pageBuilder: (context, state) {
          final itemId = state.pathParameters['itemId']!;
          return MaterialPage(child: EditItemScreen(itemId: itemId));
        },
      ),
      GoRoute(
        path: '/transactions/create/:type',
        name: RouteName.createTransaction,
        pageBuilder: (context, state) {
          final typeStr = state.pathParameters['type']!;
          final type = TransactionType.fromValue(typeStr);
          return MaterialPage(
            child: CreateTransactionScreen(transactionType: type),
          );
        },
      ),
      ShellRoute(
        builder: (context, state, child) => MainNavigation(child: child),
        routes: [
          GoRoute(
            path: RouteName.home,
            name: RouteName.home,
            pageBuilder:
                (context, state) => const MaterialPage(child: HomeScreen()),
          ),
          GoRoute(
            path: RouteName.items,
            name: RouteName.items,
            pageBuilder:
                (context, state) => const MaterialPage(child: ItemsScreen()),
          ),
          GoRoute(
            path: RouteName.masterData,
            name: RouteName.masterData,
            pageBuilder:
                (context, state) =>
                    const MaterialPage(child: MasterDataScreen()),
          ),
          GoRoute(
            path: RouteName.transactions,
            name: RouteName.transactions,
            pageBuilder:
                (context, state) =>
                    const MaterialPage(child: TransactionsScreen()),
          ),
          GoRoute(
            path: RouteName.users,
            name: RouteName.users,
            pageBuilder:
                (context, state) => const MaterialPage(child: UsersScreen()),
          ),
        ],
      ),
    ],
  );
});
