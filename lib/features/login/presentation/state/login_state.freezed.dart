// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 LoginData? get loginData; bool? get isLoginSuccess; bool get isLoading; String? get error; int? get statusCode; Map<String, dynamic> get loginForm;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.loginData, loginData) || other.loginData == loginData)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.loginForm, loginForm));
}


@override
int get hashCode => Object.hash(runtimeType,loginData,isLoginSuccess,isLoading,error,statusCode,const DeepCollectionEquality().hash(loginForm));

@override
String toString() {
  return 'LoginState(loginData: $loginData, isLoginSuccess: $isLoginSuccess, isLoading: $isLoading, error: $error, statusCode: $statusCode, loginForm: $loginForm)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginData? loginData, bool? isLoginSuccess, bool isLoading, String? error, int? statusCode, Map<String, dynamic> loginForm
});


$LoginDataCopyWith<$Res>? get loginData;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginData = freezed,Object? isLoginSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? statusCode = freezed,Object? loginForm = null,}) {
  return _then(_self.copyWith(
loginData: freezed == loginData ? _self.loginData : loginData // ignore: cast_nullable_to_non_nullable
as LoginData?,isLoginSuccess: freezed == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loginForm: null == loginForm ? _self.loginForm : loginForm // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res>? get loginData {
    if (_self.loginData == null) {
    return null;
  }

  return $LoginDataCopyWith<$Res>(_self.loginData!, (value) {
    return _then(_self.copyWith(loginData: value));
  });
}
}


/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({this.loginData, this.isLoginSuccess, this.isLoading = false, this.error, this.statusCode, final  Map<String, dynamic> loginForm = const {'username' : '', 'password' : ''}}): _loginForm = loginForm;
  

@override final  LoginData? loginData;
@override final  bool? isLoginSuccess;
@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override final  int? statusCode;
 final  Map<String, dynamic> _loginForm;
@override@JsonKey() Map<String, dynamic> get loginForm {
  if (_loginForm is EqualUnmodifiableMapView) return _loginForm;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_loginForm);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.loginData, loginData) || other.loginData == loginData)&&(identical(other.isLoginSuccess, isLoginSuccess) || other.isLoginSuccess == isLoginSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._loginForm, _loginForm));
}


@override
int get hashCode => Object.hash(runtimeType,loginData,isLoginSuccess,isLoading,error,statusCode,const DeepCollectionEquality().hash(_loginForm));

@override
String toString() {
  return 'LoginState(loginData: $loginData, isLoginSuccess: $isLoginSuccess, isLoading: $isLoading, error: $error, statusCode: $statusCode, loginForm: $loginForm)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 LoginData? loginData, bool? isLoginSuccess, bool isLoading, String? error, int? statusCode, Map<String, dynamic> loginForm
});


@override $LoginDataCopyWith<$Res>? get loginData;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginData = freezed,Object? isLoginSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? statusCode = freezed,Object? loginForm = null,}) {
  return _then(_LoginState(
loginData: freezed == loginData ? _self.loginData : loginData // ignore: cast_nullable_to_non_nullable
as LoginData?,isLoginSuccess: freezed == isLoginSuccess ? _self.isLoginSuccess : isLoginSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loginForm: null == loginForm ? _self._loginForm : loginForm // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res>? get loginData {
    if (_self.loginData == null) {
    return null;
  }

  return $LoginDataCopyWith<$Res>(_self.loginData!, (value) {
    return _then(_self.copyWith(loginData: value));
  });
}
}

// dart format on
