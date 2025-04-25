// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _UpdateUserRequest(
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(_UpdateUserRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullName': instance.fullName,
      'password': instance.password,
      'role': instance.role,
    };
