// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) =>
    _CreateUserRequest(
      username: json['username'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$CreateUserRequestToJson(_CreateUserRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'fullName': instance.fullName,
      'role': instance.role,
    };
