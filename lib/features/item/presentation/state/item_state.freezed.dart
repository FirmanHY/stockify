// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemState {

 List<ItemResponse> get items; bool get isLoading; bool get isInitialLoading; String? get error; int get currentPage; int get limit; String? get searchQuery; bool? get lowStockOnly; Pagination? get pagination; bool get isDeleting; String? get deleteError;
/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemStateCopyWith<ItemState> get copyWith => _$ItemStateCopyWithImpl<ItemState>(this as ItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lowStockOnly, lowStockOnly) || other.lowStockOnly == lowStockOnly)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,lowStockOnly,pagination,isDeleting,deleteError);

@override
String toString() {
  return 'ItemState(items: $items, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, lowStockOnly: $lowStockOnly, pagination: $pagination, isDeleting: $isDeleting, deleteError: $deleteError)';
}


}

/// @nodoc
abstract mixin class $ItemStateCopyWith<$Res>  {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) _then) = _$ItemStateCopyWithImpl;
@useResult
$Res call({
 List<ItemResponse> items, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, bool? lowStockOnly, Pagination? pagination, bool isDeleting, String? deleteError
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ItemStateCopyWithImpl<$Res>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._self, this._then);

  final ItemState _self;
  final $Res Function(ItemState) _then;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? lowStockOnly = freezed,Object? pagination = freezed,Object? isDeleting = null,Object? deleteError = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,lowStockOnly: freezed == lowStockOnly ? _self.lowStockOnly : lowStockOnly // ignore: cast_nullable_to_non_nullable
as bool?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc


class _ItemState extends ItemState {
  const _ItemState({final  List<ItemResponse> items = const [], this.isLoading = false, this.isInitialLoading = false, this.error, this.currentPage = 1, this.limit = 10, this.searchQuery, this.lowStockOnly, this.pagination, this.isDeleting = false, this.deleteError}): _items = items,super._();
  

 final  List<ItemResponse> _items;
@override@JsonKey() List<ItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInitialLoading;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int limit;
@override final  String? searchQuery;
@override final  bool? lowStockOnly;
@override final  Pagination? pagination;
@override@JsonKey() final  bool isDeleting;
@override final  String? deleteError;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemStateCopyWith<_ItemState> get copyWith => __$ItemStateCopyWithImpl<_ItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lowStockOnly, lowStockOnly) || other.lowStockOnly == lowStockOnly)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,lowStockOnly,pagination,isDeleting,deleteError);

@override
String toString() {
  return 'ItemState(items: $items, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, lowStockOnly: $lowStockOnly, pagination: $pagination, isDeleting: $isDeleting, deleteError: $deleteError)';
}


}

/// @nodoc
abstract mixin class _$ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$ItemStateCopyWith(_ItemState value, $Res Function(_ItemState) _then) = __$ItemStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemResponse> items, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, bool? lowStockOnly, Pagination? pagination, bool isDeleting, String? deleteError
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ItemStateCopyWithImpl<$Res>
    implements _$ItemStateCopyWith<$Res> {
  __$ItemStateCopyWithImpl(this._self, this._then);

  final _ItemState _self;
  final $Res Function(_ItemState) _then;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? lowStockOnly = freezed,Object? pagination = freezed,Object? isDeleting = null,Object? deleteError = freezed,}) {
  return _then(_ItemState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,lowStockOnly: freezed == lowStockOnly ? _self.lowStockOnly : lowStockOnly // ignore: cast_nullable_to_non_nullable
as bool?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
