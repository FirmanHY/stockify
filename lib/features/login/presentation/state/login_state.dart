import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/features/login/data/dto/response/login_response.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    LoginData? loginData,
    bool? isLoginSuccess,
    @Default(false) bool isLoading,
    String? error,
    int? statusCode,
    @Default({'username': '', 'password': ''}) Map<String, dynamic> loginForm,
  }) = _LoginState;
}
