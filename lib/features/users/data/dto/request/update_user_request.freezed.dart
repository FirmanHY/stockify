// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserRequest {

 String? get username; String? get fullName; String? get password; String? get role;
/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith => _$UpdateUserRequestCopyWithImpl<UpdateUserRequest>(this as UpdateUserRequest, _$identity);

  /// Serializes this UpdateUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,fullName,password,role);

@override
String toString() {
  return 'UpdateUserRequest(username: $username, fullName: $fullName, password: $password, role: $role)';
}


}

/// @nodoc
abstract mixin class $UpdateUserRequestCopyWith<$Res>  {
  factory $UpdateUserRequestCopyWith(UpdateUserRequest value, $Res Function(UpdateUserRequest) _then) = _$UpdateUserRequestCopyWithImpl;
@useResult
$Res call({
 String? username, String? fullName, String? password, String? role
});




}
/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final UpdateUserRequest _self;
  final $Res Function(UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? fullName = freezed,Object? password = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateUserRequest implements UpdateUserRequest {
  const _UpdateUserRequest({this.username, this.fullName, this.password, this.role});
  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestFromJson(json);

@override final  String? username;
@override final  String? fullName;
@override final  String? password;
@override final  String? role;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith => __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,fullName,password,role);

@override
String toString() {
  return 'UpdateUserRequest(username: $username, fullName: $fullName, password: $password, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserRequestCopyWith<$Res> implements $UpdateUserRequestCopyWith<$Res> {
  factory _$UpdateUserRequestCopyWith(_UpdateUserRequest value, $Res Function(_UpdateUserRequest) _then) = __$UpdateUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? fullName, String? password, String? role
});




}
/// @nodoc
class __$UpdateUserRequestCopyWithImpl<$Res>
    implements _$UpdateUserRequestCopyWith<$Res> {
  __$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final _UpdateUserRequest _self;
  final $Res Function(_UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? fullName = freezed,Object? password = freezed,Object? role = freezed,}) {
  return _then(_UpdateUserRequest(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
