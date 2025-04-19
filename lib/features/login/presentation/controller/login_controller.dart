import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/providers/auth_provider.dart';
import 'package:stockify/features/login/application/login_service.dart';
import 'package:stockify/features/login/data/dto/request/login_request.dart';
import 'package:stockify/features/login/presentation/state/login_state.dart';

final loginControllerProvider =
    AutoDisposeNotifierProvider<LoginController, LoginState>(
      LoginController.new,
    );

class LoginController extends AutoDisposeNotifier<LoginState> {
  @override
  LoginState build() {
    return LoginState();
  }

  Future<void> login() async {
    try {
      // Set loading state
      state = state.copyWith(
        isLoading: true,
        error: null,
        isLoginSuccess: null,
      );

      // Create request object
      final request = LoginRequest(
        username: state.loginForm['username'] ?? '',
        password: state.loginForm['password'] ?? '',
      );

      // Call service
      final result = await ref.read(loginServiceProvider).login(request);

      // Handle result
      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isLoginSuccess: true,
            loginData: success.data,
            statusCode: null,
          );
          ref.read(authProvider).getAccessToken(success.data.token);
        },
        (failure) {
          state = state.copyWith(
            isLoading: false,
            isLoginSuccess: false,
            error: failure.message,
            statusCode: failure.statusCode,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        statusCode: 500,
        isLoading: false,
        isLoginSuccess: false,
        error: e.toString(),
      );
    }
  }

  void updateFormData(Map<String, dynamic> newFormData) {
    state = state.copyWith(loginForm: {...state.loginForm, ...newFormData});
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}
