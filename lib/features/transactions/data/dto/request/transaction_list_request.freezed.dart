// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionListRequest {

 int? get page; int? get limit; String? get search;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate;@JsonKey(name: 'type') String? get typeFilter;
/// Create a copy of TransactionListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionListRequestCopyWith<TransactionListRequest> get copyWith => _$TransactionListRequestCopyWithImpl<TransactionListRequest>(this as TransactionListRequest, _$identity);

  /// Serializes this TransactionListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.typeFilter, typeFilter) || other.typeFilter == typeFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search,startDate,endDate,typeFilter);

@override
String toString() {
  return 'TransactionListRequest(page: $page, limit: $limit, search: $search, startDate: $startDate, endDate: $endDate, typeFilter: $typeFilter)';
}


}

/// @nodoc
abstract mixin class $TransactionListRequestCopyWith<$Res>  {
  factory $TransactionListRequestCopyWith(TransactionListRequest value, $Res Function(TransactionListRequest) _then) = _$TransactionListRequestCopyWithImpl;
@useResult
$Res call({
 int? page, int? limit, String? search,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'type') String? typeFilter
});




}
/// @nodoc
class _$TransactionListRequestCopyWithImpl<$Res>
    implements $TransactionListRequestCopyWith<$Res> {
  _$TransactionListRequestCopyWithImpl(this._self, this._then);

  final TransactionListRequest _self;
  final $Res Function(TransactionListRequest) _then;

/// Create a copy of TransactionListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? typeFilter = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,typeFilter: freezed == typeFilter ? _self.typeFilter : typeFilter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionListRequest implements TransactionListRequest {
  const _TransactionListRequest({this.page, this.limit, this.search, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'type') this.typeFilter});
  factory _TransactionListRequest.fromJson(Map<String, dynamic> json) => _$TransactionListRequestFromJson(json);

@override final  int? page;
@override final  int? limit;
@override final  String? search;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey(name: 'type') final  String? typeFilter;

/// Create a copy of TransactionListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListRequestCopyWith<_TransactionListRequest> get copyWith => __$TransactionListRequestCopyWithImpl<_TransactionListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.typeFilter, typeFilter) || other.typeFilter == typeFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,search,startDate,endDate,typeFilter);

@override
String toString() {
  return 'TransactionListRequest(page: $page, limit: $limit, search: $search, startDate: $startDate, endDate: $endDate, typeFilter: $typeFilter)';
}


}

/// @nodoc
abstract mixin class _$TransactionListRequestCopyWith<$Res> implements $TransactionListRequestCopyWith<$Res> {
  factory _$TransactionListRequestCopyWith(_TransactionListRequest value, $Res Function(_TransactionListRequest) _then) = __$TransactionListRequestCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? limit, String? search,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'type') String? typeFilter
});




}
/// @nodoc
class __$TransactionListRequestCopyWithImpl<$Res>
    implements _$TransactionListRequestCopyWith<$Res> {
  __$TransactionListRequestCopyWithImpl(this._self, this._then);

  final _TransactionListRequest _self;
  final $Res Function(_TransactionListRequest) _then;

/// Create a copy of TransactionListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? limit = freezed,Object? search = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? typeFilter = freezed,}) {
  return _then(_TransactionListRequest(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,typeFilter: freezed == typeFilter ? _self.typeFilter : typeFilter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
