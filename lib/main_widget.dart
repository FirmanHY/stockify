import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/route/go_router_provider.dart';
import 'package:stockify/core/theme/app_theme.dart';

class MainWidget extends ConsumerWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
