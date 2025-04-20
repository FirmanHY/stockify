// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_type_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemTypeRequest {

 int? get page; int? get limit; String? get search;
/// Create a copy of ItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemTypeRequestCopyWith<ItemTypeRequest> get copyWith => _$ItemTypeRequestCopyWithImpl<ItemTypeRequest>(this as ItemTypeRequest, _$identity);

  /// Serializes this ItemTypeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemTypeRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search);

@override
String toString() {
  return 'ItemTypeRequest(page: $page, limit: $limit, search: $search)';
}


}

/// @nodoc
abstract mixin class $ItemTypeRequestCopyWith<$Res>  {
  factory $ItemTypeRequestCopyWith(ItemTypeRequest value, $Res Function(ItemTypeRequest) _then) = _$ItemTypeRequestCopyWithImpl;
@useResult
$Res call({
 int? page, int? limit, String? search
});




}
/// @nodoc
class _$ItemTypeRequestCopyWithImpl<$Res>
    implements $ItemTypeRequestCopyWith<$Res> {
  _$ItemTypeRequestCopyWithImpl(this._self, this._then);

  final ItemTypeRequest _self;
  final $Res Function(ItemTypeRequest) _then;

/// Create a copy of ItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItemTypeRequest implements ItemTypeRequest {
  const _ItemTypeRequest({this.page, this.limit, this.search});
  factory _ItemTypeRequest.fromJson(Map<String, dynamic> json) => _$ItemTypeRequestFromJson(json);

@override final  int? page;
@override final  int? limit;
@override final  String? search;

/// Create a copy of ItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemTypeRequestCopyWith<_ItemTypeRequest> get copyWith => __$ItemTypeRequestCopyWithImpl<_ItemTypeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemTypeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemTypeRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search);

@override
String toString() {
  return 'ItemTypeRequest(page: $page, limit: $limit, search: $search)';
}


}

/// @nodoc
abstract mixin class _$ItemTypeRequestCopyWith<$Res> implements $ItemTypeRequestCopyWith<$Res> {
  factory _$ItemTypeRequestCopyWith(_ItemTypeRequest value, $Res Function(_ItemTypeRequest) _then) = __$ItemTypeRequestCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? limit, String? search
});




}
/// @nodoc
class __$ItemTypeRequestCopyWithImpl<$Res>
    implements _$ItemTypeRequestCopyWith<$Res> {
  __$ItemTypeRequestCopyWithImpl(this._self, this._then);

  final _ItemTypeRequest _self;
  final $Res Function(_ItemTypeRequest) _then;

/// Create a copy of ItemTypeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,}) {
  return _then(_ItemTypeRequest(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
