// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemRequest {

 int? get page; int? get limit; String? get search;@JsonKey(name: 'low_stock_only') bool? get lowStockOnly;
/// Create a copy of ItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemRequestCopyWith<ItemRequest> get copyWith => _$ItemRequestCopyWithImpl<ItemRequest>(this as ItemRequest, _$identity);

  /// Serializes this ItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.lowStockOnly, lowStockOnly) || other.lowStockOnly == lowStockOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search,lowStockOnly);

@override
String toString() {
  return 'ItemRequest(page: $page, limit: $limit, search: $search, lowStockOnly: $lowStockOnly)';
}


}

/// @nodoc
abstract mixin class $ItemRequestCopyWith<$Res>  {
  factory $ItemRequestCopyWith(ItemRequest value, $Res Function(ItemRequest) _then) = _$ItemRequestCopyWithImpl;
@useResult
$Res call({
 int? page, int? limit, String? search,@JsonKey(name: 'low_stock_only') bool? lowStockOnly
});




}
/// @nodoc
class _$ItemRequestCopyWithImpl<$Res>
    implements $ItemRequestCopyWith<$Res> {
  _$ItemRequestCopyWithImpl(this._self, this._then);

  final ItemRequest _self;
  final $Res Function(ItemRequest) _then;

/// Create a copy of ItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,Object? lowStockOnly = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,lowStockOnly: freezed == lowStockOnly ? _self.lowStockOnly : lowStockOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ItemRequest implements ItemRequest {
  const _ItemRequest({this.page, this.limit, this.search, @JsonKey(name: 'low_stock_only') this.lowStockOnly});
  factory _ItemRequest.fromJson(Map<String, dynamic> json) => _$ItemRequestFromJson(json);

@override final  int? page;
@override final  int? limit;
@override final  String? search;
@override@JsonKey(name: 'low_stock_only') final  bool? lowStockOnly;

/// Create a copy of ItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemRequestCopyWith<_ItemRequest> get copyWith => __$ItemRequestCopyWithImpl<_ItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.lowStockOnly, lowStockOnly) || other.lowStockOnly == lowStockOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search,lowStockOnly);

@override
String toString() {
  return 'ItemRequest(page: $page, limit: $limit, search: $search, lowStockOnly: $lowStockOnly)';
}


}

/// @nodoc
abstract mixin class _$ItemRequestCopyWith<$Res> implements $ItemRequestCopyWith<$Res> {
  factory _$ItemRequestCopyWith(_ItemRequest value, $Res Function(_ItemRequest) _then) = __$ItemRequestCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? limit, String? search,@JsonKey(name: 'low_stock_only') bool? lowStockOnly
});




}
/// @nodoc
class __$ItemRequestCopyWithImpl<$Res>
    implements _$ItemRequestCopyWith<$Res> {
  __$ItemRequestCopyWithImpl(this._self, this._then);

  final _ItemRequest _self;
  final $Res Function(_ItemRequest) _then;

/// Create a copy of ItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,Object? lowStockOnly = freezed,}) {
  return _then(_ItemRequest(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,lowStockOnly: freezed == lowStockOnly ? _self.lowStockOnly : lowStockOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
