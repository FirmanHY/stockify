// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemTypeResponse {

@JsonKey(name: 'type_id') String get typeId;@JsonKey(name: 'type_name') String get typeName;
/// Create a copy of ItemTypeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemTypeResponseCopyWith<ItemTypeResponse> get copyWith => _$ItemTypeResponseCopyWithImpl<ItemTypeResponse>(this as ItemTypeResponse, _$identity);

  /// Serializes this ItemTypeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemTypeResponse&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,typeId,typeName);

@override
String toString() {
  return 'ItemTypeResponse(typeId: $typeId, typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class $ItemTypeResponseCopyWith<$Res>  {
  factory $ItemTypeResponseCopyWith(ItemTypeResponse value, $Res Function(ItemTypeResponse) _then) = _$ItemTypeResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type_id') String typeId,@JsonKey(name: 'type_name') String typeName
});




}
/// @nodoc
class _$ItemTypeResponseCopyWithImpl<$Res>
    implements $ItemTypeResponseCopyWith<$Res> {
  _$ItemTypeResponseCopyWithImpl(this._self, this._then);

  final ItemTypeResponse _self;
  final $Res Function(ItemTypeResponse) _then;

/// Create a copy of ItemTypeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? typeId = null,Object? typeName = null,}) {
  return _then(_self.copyWith(
typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItemTypeResponse implements ItemTypeResponse {
  const _ItemTypeResponse({@JsonKey(name: 'type_id') required this.typeId, @JsonKey(name: 'type_name') required this.typeName});
  factory _ItemTypeResponse.fromJson(Map<String, dynamic> json) => _$ItemTypeResponseFromJson(json);

@override@JsonKey(name: 'type_id') final  String typeId;
@override@JsonKey(name: 'type_name') final  String typeName;

/// Create a copy of ItemTypeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemTypeResponseCopyWith<_ItemTypeResponse> get copyWith => __$ItemTypeResponseCopyWithImpl<_ItemTypeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemTypeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemTypeResponse&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,typeId,typeName);

@override
String toString() {
  return 'ItemTypeResponse(typeId: $typeId, typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class _$ItemTypeResponseCopyWith<$Res> implements $ItemTypeResponseCopyWith<$Res> {
  factory _$ItemTypeResponseCopyWith(_ItemTypeResponse value, $Res Function(_ItemTypeResponse) _then) = __$ItemTypeResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type_id') String typeId,@JsonKey(name: 'type_name') String typeName
});




}
/// @nodoc
class __$ItemTypeResponseCopyWithImpl<$Res>
    implements _$ItemTypeResponseCopyWith<$Res> {
  __$ItemTypeResponseCopyWithImpl(this._self, this._then);

  final _ItemTypeResponse _self;
  final $Res Function(_ItemTypeResponse) _then;

/// Create a copy of ItemTypeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? typeId = null,Object? typeName = null,}) {
  return _then(_ItemTypeResponse(
typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
