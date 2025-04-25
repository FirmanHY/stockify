import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    String? username,
    String? fullName,
    String? password,
    String? role,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}
