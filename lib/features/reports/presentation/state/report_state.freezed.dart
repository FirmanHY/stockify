// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportState {

 bool get isLoading; bool get isSuccess; String? get error;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportStateCopyWith<ReportState> get copyWith => _$ReportStateCopyWithImpl<ReportState>(this as ReportState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,error);

@override
String toString() {
  return 'ReportState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class $ReportStateCopyWith<$Res>  {
  factory $ReportStateCopyWith(ReportState value, $Res Function(ReportState) _then) = _$ReportStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSuccess, String? error
});




}
/// @nodoc
class _$ReportStateCopyWithImpl<$Res>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._self, this._then);

  final ReportState _self;
  final $Res Function(ReportState) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSuccess = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _ReportState implements ReportState {
  const _ReportState({this.isLoading = false, this.isSuccess = false, this.error});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override final  String? error;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportStateCopyWith<_ReportState> get copyWith => __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSuccess,error);

@override
String toString() {
  return 'ReportState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ReportStateCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(_ReportState value, $Res Function(_ReportState) _then) = __$ReportStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSuccess, String? error
});




}
/// @nodoc
class __$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(this._self, this._then);

  final _ReportState _self;
  final $Res Function(_ReportState) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSuccess = null,Object? error = freezed,}) {
  return _then(_ReportState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
