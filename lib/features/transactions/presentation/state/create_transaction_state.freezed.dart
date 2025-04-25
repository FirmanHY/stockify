// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTransactionState {

 List<ItemResponse> get items; ItemResponse? get selectedItem; DateTime? get date; int get quantity; String? get description; TransactionType get transactionType; bool get isLoading; bool get isCreating; String? get errorGettingItems; String? get errorCreating;
/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionStateCopyWith<CreateTransactionState> get copyWith => _$CreateTransactionStateCopyWithImpl<CreateTransactionState>(this as CreateTransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem)&&(identical(other.date, date) || other.date == date)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.errorGettingItems, errorGettingItems) || other.errorGettingItems == errorGettingItems)&&(identical(other.errorCreating, errorCreating) || other.errorCreating == errorCreating));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),selectedItem,date,quantity,description,transactionType,isLoading,isCreating,errorGettingItems,errorCreating);

@override
String toString() {
  return 'CreateTransactionState(items: $items, selectedItem: $selectedItem, date: $date, quantity: $quantity, description: $description, transactionType: $transactionType, isLoading: $isLoading, isCreating: $isCreating, errorGettingItems: $errorGettingItems, errorCreating: $errorCreating)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionStateCopyWith<$Res>  {
  factory $CreateTransactionStateCopyWith(CreateTransactionState value, $Res Function(CreateTransactionState) _then) = _$CreateTransactionStateCopyWithImpl;
@useResult
$Res call({
 List<ItemResponse> items, ItemResponse? selectedItem, DateTime? date, int quantity, String? description, TransactionType transactionType, bool isLoading, bool isCreating, String? errorGettingItems, String? errorCreating
});


$ItemResponseCopyWith<$Res>? get selectedItem;

}
/// @nodoc
class _$CreateTransactionStateCopyWithImpl<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  _$CreateTransactionStateCopyWithImpl(this._self, this._then);

  final CreateTransactionState _self;
  final $Res Function(CreateTransactionState) _then;

/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? selectedItem = freezed,Object? date = freezed,Object? quantity = null,Object? description = freezed,Object? transactionType = null,Object? isLoading = null,Object? isCreating = null,Object? errorGettingItems = freezed,Object? errorCreating = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemResponse>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as ItemResponse?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,errorGettingItems: freezed == errorGettingItems ? _self.errorGettingItems : errorGettingItems // ignore: cast_nullable_to_non_nullable
as String?,errorCreating: freezed == errorCreating ? _self.errorCreating : errorCreating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res>? get selectedItem {
    if (_self.selectedItem == null) {
    return null;
  }

  return $ItemResponseCopyWith<$Res>(_self.selectedItem!, (value) {
    return _then(_self.copyWith(selectedItem: value));
  });
}
}


/// @nodoc


class _CreateTransactionState implements CreateTransactionState {
  const _CreateTransactionState({final  List<ItemResponse> items = const [], this.selectedItem, this.date, this.quantity = 0, this.description, required this.transactionType, this.isLoading = false, this.isCreating = false, this.errorGettingItems, this.errorCreating}): _items = items;
  

 final  List<ItemResponse> _items;
@override@JsonKey() List<ItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  ItemResponse? selectedItem;
@override final  DateTime? date;
@override@JsonKey() final  int quantity;
@override final  String? description;
@override final  TransactionType transactionType;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCreating;
@override final  String? errorGettingItems;
@override final  String? errorCreating;

/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionStateCopyWith<_CreateTransactionState> get copyWith => __$CreateTransactionStateCopyWithImpl<_CreateTransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem)&&(identical(other.date, date) || other.date == date)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.errorGettingItems, errorGettingItems) || other.errorGettingItems == errorGettingItems)&&(identical(other.errorCreating, errorCreating) || other.errorCreating == errorCreating));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),selectedItem,date,quantity,description,transactionType,isLoading,isCreating,errorGettingItems,errorCreating);

@override
String toString() {
  return 'CreateTransactionState(items: $items, selectedItem: $selectedItem, date: $date, quantity: $quantity, description: $description, transactionType: $transactionType, isLoading: $isLoading, isCreating: $isCreating, errorGettingItems: $errorGettingItems, errorCreating: $errorCreating)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionStateCopyWith<$Res> implements $CreateTransactionStateCopyWith<$Res> {
  factory _$CreateTransactionStateCopyWith(_CreateTransactionState value, $Res Function(_CreateTransactionState) _then) = __$CreateTransactionStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemResponse> items, ItemResponse? selectedItem, DateTime? date, int quantity, String? description, TransactionType transactionType, bool isLoading, bool isCreating, String? errorGettingItems, String? errorCreating
});


@override $ItemResponseCopyWith<$Res>? get selectedItem;

}
/// @nodoc
class __$CreateTransactionStateCopyWithImpl<$Res>
    implements _$CreateTransactionStateCopyWith<$Res> {
  __$CreateTransactionStateCopyWithImpl(this._self, this._then);

  final _CreateTransactionState _self;
  final $Res Function(_CreateTransactionState) _then;

/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? selectedItem = freezed,Object? date = freezed,Object? quantity = null,Object? description = freezed,Object? transactionType = null,Object? isLoading = null,Object? isCreating = null,Object? errorGettingItems = freezed,Object? errorCreating = freezed,}) {
  return _then(_CreateTransactionState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemResponse>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as ItemResponse?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,errorGettingItems: freezed == errorGettingItems ? _self.errorGettingItems : errorGettingItems // ignore: cast_nullable_to_non_nullable
as String?,errorCreating: freezed == errorCreating ? _self.errorCreating : errorCreating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateTransactionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res>? get selectedItem {
    if (_self.selectedItem == null) {
    return null;
  }

  return $ItemResponseCopyWith<$Res>(_self.selectedItem!, (value) {
    return _then(_self.copyWith(selectedItem: value));
  });
}
}

// dart format on
