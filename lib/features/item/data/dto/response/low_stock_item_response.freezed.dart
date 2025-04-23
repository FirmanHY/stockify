// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'low_stock_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LowStockItemResponse {

@JsonKey(name: 'item_name') String get itemName;@JsonKey(name: 'type_name') String get typeName; int get stock;
/// Create a copy of LowStockItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LowStockItemResponseCopyWith<LowStockItemResponse> get copyWith => _$LowStockItemResponseCopyWithImpl<LowStockItemResponse>(this as LowStockItemResponse, _$identity);

  /// Serializes this LowStockItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LowStockItemResponse&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemName,typeName,stock);

@override
String toString() {
  return 'LowStockItemResponse(itemName: $itemName, typeName: $typeName, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $LowStockItemResponseCopyWith<$Res>  {
  factory $LowStockItemResponseCopyWith(LowStockItemResponse value, $Res Function(LowStockItemResponse) _then) = _$LowStockItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'type_name') String typeName, int stock
});




}
/// @nodoc
class _$LowStockItemResponseCopyWithImpl<$Res>
    implements $LowStockItemResponseCopyWith<$Res> {
  _$LowStockItemResponseCopyWithImpl(this._self, this._then);

  final LowStockItemResponse _self;
  final $Res Function(LowStockItemResponse) _then;

/// Create a copy of LowStockItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemName = null,Object? typeName = null,Object? stock = null,}) {
  return _then(_self.copyWith(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LowStockItemResponse implements LowStockItemResponse {
  const _LowStockItemResponse({@JsonKey(name: 'item_name') required this.itemName, @JsonKey(name: 'type_name') required this.typeName, required this.stock});
  factory _LowStockItemResponse.fromJson(Map<String, dynamic> json) => _$LowStockItemResponseFromJson(json);

@override@JsonKey(name: 'item_name') final  String itemName;
@override@JsonKey(name: 'type_name') final  String typeName;
@override final  int stock;

/// Create a copy of LowStockItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LowStockItemResponseCopyWith<_LowStockItemResponse> get copyWith => __$LowStockItemResponseCopyWithImpl<_LowStockItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LowStockItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LowStockItemResponse&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemName,typeName,stock);

@override
String toString() {
  return 'LowStockItemResponse(itemName: $itemName, typeName: $typeName, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$LowStockItemResponseCopyWith<$Res> implements $LowStockItemResponseCopyWith<$Res> {
  factory _$LowStockItemResponseCopyWith(_LowStockItemResponse value, $Res Function(_LowStockItemResponse) _then) = __$LowStockItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_name') String itemName,@JsonKey(name: 'type_name') String typeName, int stock
});




}
/// @nodoc
class __$LowStockItemResponseCopyWithImpl<$Res>
    implements _$LowStockItemResponseCopyWith<$Res> {
  __$LowStockItemResponseCopyWithImpl(this._self, this._then);

  final _LowStockItemResponse _self;
  final $Res Function(_LowStockItemResponse) _then;

/// Create a copy of LowStockItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemName = null,Object? typeName = null,Object? stock = null,}) {
  return _then(_LowStockItemResponse(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
