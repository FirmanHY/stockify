// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemTypeState {

 List<ItemTypeResponse> get itemTypes; bool get isLoading; bool get isInitialLoading; String? get error; int get currentPage; int get limit; String? get searchQuery; Pagination? get pagination;
/// Create a copy of ItemTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemTypeStateCopyWith<ItemTypeState> get copyWith => _$ItemTypeStateCopyWithImpl<ItemTypeState>(this as ItemTypeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemTypeState&&const DeepCollectionEquality().equals(other.itemTypes, itemTypes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(itemTypes),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,pagination);

@override
String toString() {
  return 'ItemTypeState(itemTypes: $itemTypes, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ItemTypeStateCopyWith<$Res>  {
  factory $ItemTypeStateCopyWith(ItemTypeState value, $Res Function(ItemTypeState) _then) = _$ItemTypeStateCopyWithImpl;
@useResult
$Res call({
 List<ItemTypeResponse> itemTypes, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ItemTypeStateCopyWithImpl<$Res>
    implements $ItemTypeStateCopyWith<$Res> {
  _$ItemTypeStateCopyWithImpl(this._self, this._then);

  final ItemTypeState _self;
  final $Res Function(ItemTypeState) _then;

/// Create a copy of ItemTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemTypes = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
itemTypes: null == itemTypes ? _self.itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of ItemTypeState
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


class _ItemTypeState extends ItemTypeState {
  const _ItemTypeState({final  List<ItemTypeResponse> itemTypes = const [], this.isLoading = false, this.isInitialLoading = false, this.error, this.currentPage = 1, this.limit = 10, this.searchQuery, this.pagination}): _itemTypes = itemTypes,super._();
  

 final  List<ItemTypeResponse> _itemTypes;
@override@JsonKey() List<ItemTypeResponse> get itemTypes {
  if (_itemTypes is EqualUnmodifiableListView) return _itemTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemTypes);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInitialLoading;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int limit;
@override final  String? searchQuery;
@override final  Pagination? pagination;

/// Create a copy of ItemTypeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemTypeStateCopyWith<_ItemTypeState> get copyWith => __$ItemTypeStateCopyWithImpl<_ItemTypeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemTypeState&&const DeepCollectionEquality().equals(other._itemTypes, _itemTypes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_itemTypes),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,pagination);

@override
String toString() {
  return 'ItemTypeState(itemTypes: $itemTypes, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ItemTypeStateCopyWith<$Res> implements $ItemTypeStateCopyWith<$Res> {
  factory _$ItemTypeStateCopyWith(_ItemTypeState value, $Res Function(_ItemTypeState) _then) = __$ItemTypeStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemTypeResponse> itemTypes, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ItemTypeStateCopyWithImpl<$Res>
    implements _$ItemTypeStateCopyWith<$Res> {
  __$ItemTypeStateCopyWithImpl(this._self, this._then);

  final _ItemTypeState _self;
  final $Res Function(_ItemTypeState) _then;

/// Create a copy of ItemTypeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemTypes = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? pagination = freezed,}) {
  return _then(_ItemTypeState(
itemTypes: null == itemTypes ? _self._itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of ItemTypeState
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
