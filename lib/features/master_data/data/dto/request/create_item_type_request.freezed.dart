// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_type_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateItemTypeRequest {

@JsonKey(name: 'type_name') String get typeName;
/// Create a copy of CreateItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemTypeRequestCopyWith<CreateItemTypeRequest> get copyWith => _$CreateItemTypeRequestCopyWithImpl<CreateItemTypeRequest>(this as CreateItemTypeRequest, _$identity);

  /// Serializes this CreateItemTypeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemTypeRequest&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,typeName);

@override
String toString() {
  return 'CreateItemTypeRequest(typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class $CreateItemTypeRequestCopyWith<$Res>  {
  factory $CreateItemTypeRequestCopyWith(CreateItemTypeRequest value, $Res Function(CreateItemTypeRequest) _then) = _$CreateItemTypeRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type_name') String typeName
});




}
/// @nodoc
class _$CreateItemTypeRequestCopyWithImpl<$Res>
    implements $CreateItemTypeRequestCopyWith<$Res> {
  _$CreateItemTypeRequestCopyWithImpl(this._self, this._then);

  final CreateItemTypeRequest _self;
  final $Res Function(CreateItemTypeRequest) _then;

/// Create a copy of CreateItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? typeName = null,}) {
  return _then(_self.copyWith(
typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreateItemTypeRequest implements CreateItemTypeRequest {
  const _CreateItemTypeRequest({@JsonKey(name: 'type_name') required this.typeName});
  factory _CreateItemTypeRequest.fromJson(Map<String, dynamic> json) => _$CreateItemTypeRequestFromJson(json);

@override@JsonKey(name: 'type_name') final  String typeName;

/// Create a copy of CreateItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemTypeRequestCopyWith<_CreateItemTypeRequest> get copyWith => __$CreateItemTypeRequestCopyWithImpl<_CreateItemTypeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateItemTypeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemTypeRequest&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,typeName);

@override
String toString() {
  return 'CreateItemTypeRequest(typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class _$CreateItemTypeRequestCopyWith<$Res> implements $CreateItemTypeRequestCopyWith<$Res> {
  factory _$CreateItemTypeRequestCopyWith(_CreateItemTypeRequest value, $Res Function(_CreateItemTypeRequest) _then) = __$CreateItemTypeRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type_name') String typeName
});




}
/// @nodoc
class __$CreateItemTypeRequestCopyWithImpl<$Res>
    implements _$CreateItemTypeRequestCopyWith<$Res> {
  __$CreateItemTypeRequestCopyWithImpl(this._self, this._then);

  final _CreateItemTypeRequest _self;
  final $Res Function(_CreateItemTypeRequest) _then;

/// Create a copy of CreateItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? typeName = null,}) {
  return _then(_CreateItemTypeRequest(
typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
