// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnitRequest {

 int? get page; int? get limit; String? get search;
/// Create a copy of UnitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitRequestCopyWith<UnitRequest> get copyWith => _$UnitRequestCopyWithImpl<UnitRequest>(this as UnitRequest, _$identity);

  /// Serializes this UnitRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search);

@override
String toString() {
  return 'UnitRequest(page: $page, limit: $limit, search: $search)';
}


}

/// @nodoc
abstract mixin class $UnitRequestCopyWith<$Res>  {
  factory $UnitRequestCopyWith(UnitRequest value, $Res Function(UnitRequest) _then) = _$UnitRequestCopyWithImpl;
@useResult
$Res call({
 int? page, int? limit, String? search
});




}
/// @nodoc
class _$UnitRequestCopyWithImpl<$Res>
    implements $UnitRequestCopyWith<$Res> {
  _$UnitRequestCopyWithImpl(this._self, this._then);

  final UnitRequest _self;
  final $Res Function(UnitRequest) _then;

/// Create a copy of UnitRequest
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

class _UnitRequest implements UnitRequest {
  const _UnitRequest({this.page, this.limit, this.search});
  factory _UnitRequest.fromJson(Map<String, dynamic> json) => _$UnitRequestFromJson(json);

@override final  int? page;
@override final  int? limit;
@override final  String? search;

/// Create a copy of UnitRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitRequestCopyWith<_UnitRequest> get copyWith => __$UnitRequestCopyWithImpl<_UnitRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search);

@override
String toString() {
  return 'UnitRequest(page: $page, limit: $limit, search: $search)';
}


}

/// @nodoc
abstract mixin class _$UnitRequestCopyWith<$Res> implements $UnitRequestCopyWith<$Res> {
  factory _$UnitRequestCopyWith(_UnitRequest value, $Res Function(_UnitRequest) _then) = __$UnitRequestCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? limit, String? search
});




}
/// @nodoc
class __$UnitRequestCopyWithImpl<$Res>
    implements _$UnitRequestCopyWith<$Res> {
  __$UnitRequestCopyWithImpl(this._self, this._then);

  final _UnitRequest _self;
  final $Res Function(_UnitRequest) _then;

/// Create a copy of UnitRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,}) {
  return _then(_UnitRequest(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
