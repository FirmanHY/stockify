// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateItemRequest {

 String? get itemName; String? get typeId; String? get unitId; int? get minimumStock; MultipartFile? get image;
/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateItemRequestCopyWith<UpdateItemRequest> get copyWith => _$UpdateItemRequestCopyWithImpl<UpdateItemRequest>(this as UpdateItemRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateItemRequest&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,itemName,typeId,unitId,minimumStock,image);

@override
String toString() {
  return 'UpdateItemRequest(itemName: $itemName, typeId: $typeId, unitId: $unitId, minimumStock: $minimumStock, image: $image)';
}


}

/// @nodoc
abstract mixin class $UpdateItemRequestCopyWith<$Res>  {
  factory $UpdateItemRequestCopyWith(UpdateItemRequest value, $Res Function(UpdateItemRequest) _then) = _$UpdateItemRequestCopyWithImpl;
@useResult
$Res call({
 String? itemName, String? typeId, String? unitId, int? minimumStock, MultipartFile? image
});




}
/// @nodoc
class _$UpdateItemRequestCopyWithImpl<$Res>
    implements $UpdateItemRequestCopyWith<$Res> {
  _$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final UpdateItemRequest _self;
  final $Res Function(UpdateItemRequest) _then;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemName = freezed,Object? typeId = freezed,Object? unitId = freezed,Object? minimumStock = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minimumStock: freezed == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MultipartFile?,
  ));
}

}


/// @nodoc


class _UpdateItemRequest implements UpdateItemRequest {
  const _UpdateItemRequest({this.itemName, this.typeId, this.unitId, this.minimumStock, this.image});
  

@override final  String? itemName;
@override final  String? typeId;
@override final  String? unitId;
@override final  int? minimumStock;
@override final  MultipartFile? image;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemRequestCopyWith<_UpdateItemRequest> get copyWith => __$UpdateItemRequestCopyWithImpl<_UpdateItemRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemRequest&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,itemName,typeId,unitId,minimumStock,image);

@override
String toString() {
  return 'UpdateItemRequest(itemName: $itemName, typeId: $typeId, unitId: $unitId, minimumStock: $minimumStock, image: $image)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemRequestCopyWith<$Res> implements $UpdateItemRequestCopyWith<$Res> {
  factory _$UpdateItemRequestCopyWith(_UpdateItemRequest value, $Res Function(_UpdateItemRequest) _then) = __$UpdateItemRequestCopyWithImpl;
@override @useResult
$Res call({
 String? itemName, String? typeId, String? unitId, int? minimumStock, MultipartFile? image
});




}
/// @nodoc
class __$UpdateItemRequestCopyWithImpl<$Res>
    implements _$UpdateItemRequestCopyWith<$Res> {
  __$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateItemRequest _self;
  final $Res Function(_UpdateItemRequest) _then;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemName = freezed,Object? typeId = freezed,Object? unitId = freezed,Object? minimumStock = freezed,Object? image = freezed,}) {
  return _then(_UpdateItemRequest(
itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minimumStock: freezed == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MultipartFile?,
  ));
}


}

// dart format on
