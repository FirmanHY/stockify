// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_unit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUnitRequest {

@JsonKey(name: 'unit_name') String get unitName;
/// Create a copy of CreateUnitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUnitRequestCopyWith<CreateUnitRequest> get copyWith => _$CreateUnitRequestCopyWithImpl<CreateUnitRequest>(this as CreateUnitRequest, _$identity);

  /// Serializes this CreateUnitRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUnitRequest&&(identical(other.unitName, unitName) || other.unitName == unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitName);

@override
String toString() {
  return 'CreateUnitRequest(unitName: $unitName)';
}


}

/// @nodoc
abstract mixin class $CreateUnitRequestCopyWith<$Res>  {
  factory $CreateUnitRequestCopyWith(CreateUnitRequest value, $Res Function(CreateUnitRequest) _then) = _$CreateUnitRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unit_name') String unitName
});




}
/// @nodoc
class _$CreateUnitRequestCopyWithImpl<$Res>
    implements $CreateUnitRequestCopyWith<$Res> {
  _$CreateUnitRequestCopyWithImpl(this._self, this._then);

  final CreateUnitRequest _self;
  final $Res Function(CreateUnitRequest) _then;

/// Create a copy of CreateUnitRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitName = null,}) {
  return _then(_self.copyWith(
unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreateUnitRequest implements CreateUnitRequest {
  const _CreateUnitRequest({@JsonKey(name: 'unit_name') required this.unitName});
  factory _CreateUnitRequest.fromJson(Map<String, dynamic> json) => _$CreateUnitRequestFromJson(json);

@override@JsonKey(name: 'unit_name') final  String unitName;

/// Create a copy of CreateUnitRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUnitRequestCopyWith<_CreateUnitRequest> get copyWith => __$CreateUnitRequestCopyWithImpl<_CreateUnitRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUnitRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUnitRequest&&(identical(other.unitName, unitName) || other.unitName == unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitName);

@override
String toString() {
  return 'CreateUnitRequest(unitName: $unitName)';
}


}

/// @nodoc
abstract mixin class _$CreateUnitRequestCopyWith<$Res> implements $CreateUnitRequestCopyWith<$Res> {
  factory _$CreateUnitRequestCopyWith(_CreateUnitRequest value, $Res Function(_CreateUnitRequest) _then) = __$CreateUnitRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unit_name') String unitName
});




}
/// @nodoc
class __$CreateUnitRequestCopyWithImpl<$Res>
    implements _$CreateUnitRequestCopyWith<$Res> {
  __$CreateUnitRequestCopyWithImpl(this._self, this._then);

  final _CreateUnitRequest _self;
  final $Res Function(_CreateUnitRequest) _then;

/// Create a copy of CreateUnitRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unitName = null,}) {
  return _then(_CreateUnitRequest(
unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
