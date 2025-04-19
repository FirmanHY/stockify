// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  token: json['token'] as String,
  user: UserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  fullName: json['fullName'] as String,
  id: json['id'] as String,
  role: json['role'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'fullName': instance.fullName,
  'id': instance.id,
  'role': instance.role,
  'username': instance.username,
};
