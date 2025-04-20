import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stockify/core/constants/assets.dart';
import 'package:stockify/common/extension/string_harcoded.dart';
import 'package:stockify/common/http_status/status_code.dart';
import 'package:stockify/core/route/route_name.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/features/login/presentation/controller/login_controller.dart';
import 'package:stockify/features/login/presentation/state/login_state.dart';
import 'package:stockify/features/login/presentation/ui/widget/login_button.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(kMedium),
                child: Image.asset(
                  Assets.splashLogo,
                  fit: BoxFit.contain,
                  width: kDoubleExtraLarge + kSmall,
                  height: kDoubleExtraLarge + kSmall,
                ),
              ),
              const SizedBox(height: kSmall),
              Text(
                "Kelola Barang Dengan Mudah Dan Cepat, Tanpa Ribet !".hardcoded,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: kSmall),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'Username'.hardcoded),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan masukan username anda'.hardcoded;
                  } else if (value.length < 5) {
                    return 'Panjang username tidak boleh kurang dari 5'
                        .hardcoded;
                  }
                  return null;
                },
              ),
              const SizedBox(height: kMedium),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'.hardcoded),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan masukan password anda'.hardcoded;
                  } else if (value.length < 8) {
                    return 'Password minimal 8 karakter'.hardcoded;
                  }
                  return null;
                },
              ),

              const SizedBox(height: kMedium),
              LoginButton(onPressed: _login),
              const SizedBox(height: kLarge),
              const SizedBox(height: kLarge),
            ],
          ),
        ),
      ),
    );
  }

  void _listener() {
    ref.listen<LoginState>(loginControllerProvider, (prev, next) {
      if (!mounted) return;

      final snackBarService = ref.read(snackBarServiceProvider);

      if (next.error != null &&
          next.error!.isNotEmpty &&
          next.error != prev?.error) {
        if (next.statusCode == unauthorized) {
          snackBarService.showInfo(context, next.error!);
        } else {
          snackBarService.showError(context, next.error!);
        }
        ref
            .read(loginControllerProvider.notifier)
            .clearError(); // ✅ clear error
      }

      if (next.isLoginSuccess == true) {
        context.go(RouteName.home);
      }
    });
  }

  void _login() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // collect form data from controllers
      final formData = {
        'username': _emailController.text,
        'password': _passwordController.text,
      };

      // set form data
      ref.read(loginControllerProvider.notifier).updateFormData(formData);
      // login - call api
      ref.read(loginControllerProvider.notifier).login();
    }
  }
}
