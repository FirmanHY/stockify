// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponse {

@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'item_name') String get itemName;@JsonKey(name: 'type_id') String get typeId;@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'type_name') String get typeName;@JsonKey(name: 'unit_name') String get unitName;@JsonKey(name: 'minimum_stock') int get minimumStock; String get image; int get stock;
/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<ItemResponse> get copyWith => _$ItemResponseCopyWithImpl<ItemResponse>(this as ItemResponse, _$identity);

  /// Serializes this ItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemResponse&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,itemName,typeId,unitId,typeName,unitName,minimumStock,image,stock);

@override
String toString() {
  return 'ItemResponse(itemId: $itemId, itemName: $itemName, typeId: $typeId, unitId: $unitId, typeName: $typeName, unitName: $unitName, minimumStock: $minimumStock, image: $image, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $ItemResponseCopyWith<$Res>  {
  factory $ItemResponseCopyWith(ItemResponse value, $Res Function(ItemResponse) _then) = _$ItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'type_id') String typeId,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'type_name') String typeName,@JsonKey(name: 'unit_name') String unitName,@JsonKey(name: 'minimum_stock') int minimumStock, String image, int stock
});




}
/// @nodoc
class _$ItemResponseCopyWithImpl<$Res>
    implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._self, this._then);

  final ItemResponse _self;
  final $Res Function(ItemResponse) _then;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? itemName = null,Object? typeId = null,Object? unitId = null,Object? typeName = null,Object? unitName = null,Object? minimumStock = null,Object? image = null,Object? stock = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItemResponse implements ItemResponse {
  const _ItemResponse({@JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'item_name') required this.itemName, @JsonKey(name: 'type_id') required this.typeId, @JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'type_name') required this.typeName, @JsonKey(name: 'unit_name') required this.unitName, @JsonKey(name: 'minimum_stock') required this.minimumStock, required this.image, required this.stock});
  factory _ItemResponse.fromJson(Map<String, dynamic> json) => _$ItemResponseFromJson(json);

@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'item_name') final  String itemName;
@override@JsonKey(name: 'type_id') final  String typeId;
@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'type_name') final  String typeName;
@override@JsonKey(name: 'unit_name') final  String unitName;
@override@JsonKey(name: 'minimum_stock') final  int minimumStock;
@override final  String image;
@override final  int stock;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemResponseCopyWith<_ItemResponse> get copyWith => __$ItemResponseCopyWithImpl<_ItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemResponse&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.image, image) || other.image == image)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,itemName,typeId,unitId,typeName,unitName,minimumStock,image,stock);

@override
String toString() {
  return 'ItemResponse(itemId: $itemId, itemName: $itemName, typeId: $typeId, unitId: $unitId, typeName: $typeName, unitName: $unitName, minimumStock: $minimumStock, image: $image, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$ItemResponseCopyWith<$Res> implements $ItemResponseCopyWith<$Res> {
  factory _$ItemResponseCopyWith(_ItemResponse value, $Res Function(_ItemResponse) _then) = __$ItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'type_id') String typeId,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'type_name') String typeName,@JsonKey(name: 'unit_name') String unitName,@JsonKey(name: 'minimum_stock') int minimumStock, String image, int stock
});




}
/// @nodoc
class __$ItemResponseCopyWithImpl<$Res>
    implements _$ItemResponseCopyWith<$Res> {
  __$ItemResponseCopyWithImpl(this._self, this._then);

  final _ItemResponse _self;
  final $Res Function(_ItemResponse) _then;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemName = null,Object? typeId = null,Object? unitId = null,Object? typeName = null,Object? unitName = null,Object? minimumStock = null,Object? image = null,Object? stock = null,}) {
  return _then(_ItemResponse(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
