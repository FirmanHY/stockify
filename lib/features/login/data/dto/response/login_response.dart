// File: login_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginData with _$LoginData {
  const factory LoginData({required String token, required UserData user}) =
      _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required String fullName,
    required String id,
    required String role,
    required String username,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
