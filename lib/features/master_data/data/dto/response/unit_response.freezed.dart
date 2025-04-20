// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnitResponse {

@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'unit_name') String get unitName;
/// Create a copy of UnitResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitResponseCopyWith<UnitResponse> get copyWith => _$UnitResponseCopyWithImpl<UnitResponse>(this as UnitResponse, _$identity);

  /// Serializes this UnitResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitResponse&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitId,unitName);

@override
String toString() {
  return 'UnitResponse(unitId: $unitId, unitName: $unitName)';
}


}

/// @nodoc
abstract mixin class $UnitResponseCopyWith<$Res>  {
  factory $UnitResponseCopyWith(UnitResponse value, $Res Function(UnitResponse) _then) = _$UnitResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'unit_name') String unitName
});




}
/// @nodoc
class _$UnitResponseCopyWithImpl<$Res>
    implements $UnitResponseCopyWith<$Res> {
  _$UnitResponseCopyWithImpl(this._self, this._then);

  final UnitResponse _self;
  final $Res Function(UnitResponse) _then;

/// Create a copy of UnitResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitId = null,Object? unitName = null,}) {
  return _then(_self.copyWith(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UnitResponse implements UnitResponse {
  const _UnitResponse({@JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'unit_name') required this.unitName});
  factory _UnitResponse.fromJson(Map<String, dynamic> json) => _$UnitResponseFromJson(json);

@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'unit_name') final  String unitName;

/// Create a copy of UnitResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitResponseCopyWith<_UnitResponse> get copyWith => __$UnitResponseCopyWithImpl<_UnitResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitResponse&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitId,unitName);

@override
String toString() {
  return 'UnitResponse(unitId: $unitId, unitName: $unitName)';
}


}

/// @nodoc
abstract mixin class _$UnitResponseCopyWith<$Res> implements $UnitResponseCopyWith<$Res> {
  factory _$UnitResponseCopyWith(_UnitResponse value, $Res Function(_UnitResponse) _then) = __$UnitResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'unit_name') String unitName
});




}
/// @nodoc
class __$UnitResponseCopyWithImpl<$Res>
    implements _$UnitResponseCopyWith<$Res> {
  __$UnitResponseCopyWithImpl(this._self, this._then);

  final _UnitResponse _self;
  final $Res Function(_UnitResponse) _then;

/// Create a copy of UnitResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unitId = null,Object? unitName = null,}) {
  return _then(_UnitResponse(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
