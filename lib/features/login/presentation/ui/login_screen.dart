import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/widgets/loading_overlay/loading_overlay.dart';
import 'package:stockify/features/login/presentation/controller/login_controller.dart';
import 'package:stockify/features/login/presentation/ui/widget/login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);

    return Scaffold(
      body: LoadingOverlay(
        isLoading: state.isLoading,
        message: 'Authenticating...',
        child: const LoginForm(),
      ),
    );
  }
}
