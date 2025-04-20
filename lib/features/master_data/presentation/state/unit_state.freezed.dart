// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnitState {

 List<UnitResponse> get units; bool get isLoading; bool get isInitialLoading; String? get error; int get currentPage; int get limit; String? get searchQuery; Pagination? get pagination;
/// Create a copy of UnitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitStateCopyWith<UnitState> get copyWith => _$UnitStateCopyWithImpl<UnitState>(this as UnitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitState&&const DeepCollectionEquality().equals(other.units, units)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(units),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,pagination);

@override
String toString() {
  return 'UnitState(units: $units, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $UnitStateCopyWith<$Res>  {
  factory $UnitStateCopyWith(UnitState value, $Res Function(UnitState) _then) = _$UnitStateCopyWithImpl;
@useResult
$Res call({
 List<UnitResponse> units, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$UnitStateCopyWithImpl<$Res>
    implements $UnitStateCopyWith<$Res> {
  _$UnitStateCopyWithImpl(this._self, this._then);

  final UnitState _self;
  final $Res Function(UnitState) _then;

/// Create a copy of UnitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? units = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of UnitState
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


class _UnitState extends UnitState {
  const _UnitState({final  List<UnitResponse> units = const [], this.isLoading = false, this.isInitialLoading = false, this.error, this.currentPage = 1, this.limit = 10, this.searchQuery, this.pagination}): _units = units,super._();
  

 final  List<UnitResponse> _units;
@override@JsonKey() List<UnitResponse> get units {
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_units);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInitialLoading;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int limit;
@override final  String? searchQuery;
@override final  Pagination? pagination;

/// Create a copy of UnitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitStateCopyWith<_UnitState> get copyWith => __$UnitStateCopyWithImpl<_UnitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitState&&const DeepCollectionEquality().equals(other._units, _units)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_units),isLoading,isInitialLoading,error,currentPage,limit,searchQuery,pagination);

@override
String toString() {
  return 'UnitState(units: $units, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, searchQuery: $searchQuery, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$UnitStateCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$UnitStateCopyWith(_UnitState value, $Res Function(_UnitState) _then) = __$UnitStateCopyWithImpl;
@override @useResult
$Res call({
 List<UnitResponse> units, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, String? searchQuery, Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$UnitStateCopyWithImpl<$Res>
    implements _$UnitStateCopyWith<$Res> {
  __$UnitStateCopyWithImpl(this._self, this._then);

  final _UnitState _self;
  final $Res Function(_UnitState) _then;

/// Create a copy of UnitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? units = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? searchQuery = freezed,Object? pagination = freezed,}) {
  return _then(_UnitState(
units: null == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of UnitState
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
