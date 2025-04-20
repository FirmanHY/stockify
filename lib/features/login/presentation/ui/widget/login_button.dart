import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/features/login/presentation/controller/login_controller.dart';

class LoginButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      loginControllerProvider.select((value) => value.isLoading),
    );

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isLoading ? null : onPressed,
        child: Text(
          'Masuk'.hardcoded,
          style: const TextStyle(fontSize: kMedium),
        ),
      ),
    );
  }
}
