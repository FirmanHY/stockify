// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {

 List<UserResponse> get users; bool get isLoading; bool get isInitialLoading; String? get error; int get currentPage; int get limit; Pagination? get pagination; bool get isCreating; String? get createError; bool get isUpdating; String? get updateError; bool get isDeleting; String? get deleteError;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.createError, createError) || other.createError == createError)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.updateError, updateError) || other.updateError == updateError)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),isLoading,isInitialLoading,error,currentPage,limit,pagination,isCreating,createError,isUpdating,updateError,isDeleting,deleteError);

@override
String toString() {
  return 'UserState(users: $users, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, pagination: $pagination, isCreating: $isCreating, createError: $createError, isUpdating: $isUpdating, updateError: $updateError, isDeleting: $isDeleting, deleteError: $deleteError)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 List<UserResponse> users, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, Pagination? pagination, bool isCreating, String? createError, bool isUpdating, String? updateError, bool isDeleting, String? deleteError
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? pagination = freezed,Object? isCreating = null,Object? createError = freezed,Object? isUpdating = null,Object? updateError = freezed,Object? isDeleting = null,Object? deleteError = freezed,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,createError: freezed == createError ? _self.createError : createError // ignore: cast_nullable_to_non_nullable
as String?,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,updateError: freezed == updateError ? _self.updateError : updateError // ignore: cast_nullable_to_non_nullable
as String?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserState
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


class _UserState extends UserState {
  const _UserState({final  List<UserResponse> users = const [], this.isLoading = false, this.isInitialLoading = false, this.error, this.currentPage = 1, this.limit = 10, this.pagination, this.isCreating = false, this.createError, this.isUpdating = false, this.updateError, this.isDeleting = false, this.deleteError}): _users = users,super._();
  

 final  List<UserResponse> _users;
@override@JsonKey() List<UserResponse> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInitialLoading;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int limit;
@override final  Pagination? pagination;
@override@JsonKey() final  bool isCreating;
@override final  String? createError;
@override@JsonKey() final  bool isUpdating;
@override final  String? updateError;
@override@JsonKey() final  bool isDeleting;
@override final  String? deleteError;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.createError, createError) || other.createError == createError)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.updateError, updateError) || other.updateError == updateError)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteError, deleteError) || other.deleteError == deleteError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),isLoading,isInitialLoading,error,currentPage,limit,pagination,isCreating,createError,isUpdating,updateError,isDeleting,deleteError);

@override
String toString() {
  return 'UserState(users: $users, isLoading: $isLoading, isInitialLoading: $isInitialLoading, error: $error, currentPage: $currentPage, limit: $limit, pagination: $pagination, isCreating: $isCreating, createError: $createError, isUpdating: $isUpdating, updateError: $updateError, isDeleting: $isDeleting, deleteError: $deleteError)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserResponse> users, bool isLoading, bool isInitialLoading, String? error, int currentPage, int limit, Pagination? pagination, bool isCreating, String? createError, bool isUpdating, String? updateError, bool isDeleting, String? deleteError
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? isLoading = null,Object? isInitialLoading = null,Object? error = freezed,Object? currentPage = null,Object? limit = null,Object? pagination = freezed,Object? isCreating = null,Object? createError = freezed,Object? isUpdating = null,Object? updateError = freezed,Object? isDeleting = null,Object? deleteError = freezed,}) {
  return _then(_UserState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,createError: freezed == createError ? _self.createError : createError // ignore: cast_nullable_to_non_nullable
as String?,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,updateError: freezed == updateError ? _self.updateError : updateError // ignore: cast_nullable_to_non_nullable
as String?,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteError: freezed == deleteError ? _self.deleteError : deleteError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserState
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
