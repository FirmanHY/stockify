// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionResponse {

@JsonKey(name: 'transaction_id') String get transactionId;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'item_name') String get itemName; DateTime get date; int get quantity;@JsonKey(name: 'transaction_type') String get transactionType; String get description;@JsonKey(name: 'current_stock') int get currentStock;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionResponseCopyWith<TransactionResponse> get copyWith => _$TransactionResponseCopyWithImpl<TransactionResponse>(this as TransactionResponse, _$identity);

  /// Serializes this TransactionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionResponse&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.date, date) || other.date == date)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.description, description) || other.description == description)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,itemId,itemName,date,quantity,transactionType,description,currentStock,createdAt);

@override
String toString() {
  return 'TransactionResponse(transactionId: $transactionId, itemId: $itemId, itemName: $itemName, date: $date, quantity: $quantity, transactionType: $transactionType, description: $description, currentStock: $currentStock, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransactionResponseCopyWith<$Res>  {
  factory $TransactionResponseCopyWith(TransactionResponse value, $Res Function(TransactionResponse) _then) = _$TransactionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String itemName, DateTime date, int quantity,@JsonKey(name: 'transaction_type') String transactionType, String description,@JsonKey(name: 'current_stock') int currentStock,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._self, this._then);

  final TransactionResponse _self;
  final $Res Function(TransactionResponse) _then;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? itemId = null,Object? itemName = null,Object? date = null,Object? quantity = null,Object? transactionType = null,Object? description = null,Object? currentStock = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currentStock: null == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionResponse implements TransactionResponse {
  const _TransactionResponse({@JsonKey(name: 'transaction_id') required this.transactionId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'item_name') required this.itemName, required this.date, required this.quantity, @JsonKey(name: 'transaction_type') required this.transactionType, required this.description, @JsonKey(name: 'current_stock') required this.currentStock, @JsonKey(name: 'created_at') required this.createdAt});
  factory _TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

@override@JsonKey(name: 'transaction_id') final  String transactionId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'item_name') final  String itemName;
@override final  DateTime date;
@override final  int quantity;
@override@JsonKey(name: 'transaction_type') final  String transactionType;
@override final  String description;
@override@JsonKey(name: 'current_stock') final  int currentStock;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionResponseCopyWith<_TransactionResponse> get copyWith => __$TransactionResponseCopyWithImpl<_TransactionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionResponse&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.date, date) || other.date == date)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.description, description) || other.description == description)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,itemId,itemName,date,quantity,transactionType,description,currentStock,createdAt);

@override
String toString() {
  return 'TransactionResponse(transactionId: $transactionId, itemId: $itemId, itemName: $itemName, date: $date, quantity: $quantity, transactionType: $transactionType, description: $description, currentStock: $currentStock, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionResponseCopyWith<$Res> implements $TransactionResponseCopyWith<$Res> {
  factory _$TransactionResponseCopyWith(_TransactionResponse value, $Res Function(_TransactionResponse) _then) = __$TransactionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String itemName, DateTime date, int quantity,@JsonKey(name: 'transaction_type') String transactionType, String description,@JsonKey(name: 'current_stock') int currentStock,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$TransactionResponseCopyWithImpl<$Res>
    implements _$TransactionResponseCopyWith<$Res> {
  __$TransactionResponseCopyWithImpl(this._self, this._then);

  final _TransactionResponse _self;
  final $Res Function(_TransactionResponse) _then;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? itemId = null,Object? itemName = null,Object? date = null,Object? quantity = null,Object? transactionType = null,Object? description = null,Object? currentStock = null,Object? createdAt = null,}) {
  return _then(_TransactionResponse(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currentStock: null == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
