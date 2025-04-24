// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateItemRequest {

 String get itemName; String get typeId; String get unitId; int get minimumStock; MultipartFile? get image;
/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemRequestCopyWith<CreateItemRequest> get copyWith => _$CreateItemRequestCopyWithImpl<CreateItemRequest>(this as CreateItemRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemRequest&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,itemName,typeId,unitId,minimumStock,image);

@override
String toString() {
  return 'CreateItemRequest(itemName: $itemName, typeId: $typeId, unitId: $unitId, minimumStock: $minimumStock, image: $image)';
}


}

/// @nodoc
abstract mixin class $CreateItemRequestCopyWith<$Res>  {
  factory $CreateItemRequestCopyWith(CreateItemRequest value, $Res Function(CreateItemRequest) _then) = _$CreateItemRequestCopyWithImpl;
@useResult
$Res call({
 String itemName, String typeId, String unitId, int minimumStock, MultipartFile? image
});




}
/// @nodoc
class _$CreateItemRequestCopyWithImpl<$Res>
    implements $CreateItemRequestCopyWith<$Res> {
  _$CreateItemRequestCopyWithImpl(this._self, this._then);

  final CreateItemRequest _self;
  final $Res Function(CreateItemRequest) _then;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemName = null,Object? typeId = null,Object? unitId = null,Object? minimumStock = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MultipartFile?,
  ));
}

}


/// @nodoc


class _CreateItemRequest implements CreateItemRequest {
  const _CreateItemRequest({required this.itemName, required this.typeId, required this.unitId, required this.minimumStock, this.image});
  

@override final  String itemName;
@override final  String typeId;
@override final  String unitId;
@override final  int minimumStock;
@override final  MultipartFile? image;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemRequestCopyWith<_CreateItemRequest> get copyWith => __$CreateItemRequestCopyWithImpl<_CreateItemRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemRequest&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,itemName,typeId,unitId,minimumStock,image);

@override
String toString() {
  return 'CreateItemRequest(itemName: $itemName, typeId: $typeId, unitId: $unitId, minimumStock: $minimumStock, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CreateItemRequestCopyWith<$Res> implements $CreateItemRequestCopyWith<$Res> {
  factory _$CreateItemRequestCopyWith(_CreateItemRequest value, $Res Function(_CreateItemRequest) _then) = __$CreateItemRequestCopyWithImpl;
@override @useResult
$Res call({
 String itemName, String typeId, String unitId, int minimumStock, MultipartFile? image
});




}
/// @nodoc
class __$CreateItemRequestCopyWithImpl<$Res>
    implements _$CreateItemRequestCopyWith<$Res> {
  __$CreateItemRequestCopyWithImpl(this._self, this._then);

  final _CreateItemRequest _self;
  final $Res Function(_CreateItemRequest) _then;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemName = null,Object? typeId = null,Object? unitId = null,Object? minimumStock = null,Object? image = freezed,}) {
  return _then(_CreateItemRequest(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MultipartFile?,
  ));
}


}

// dart format on
