// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummaryResponse {

@JsonKey(name: 'total_items') int get totalItems;@JsonKey(name: 'items_in') int get totalIn;@JsonKey(name: 'items_out') int get totalOut;
/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryResponseCopyWith<SummaryResponse> get copyWith => _$SummaryResponseCopyWithImpl<SummaryResponse>(this as SummaryResponse, _$identity);

  /// Serializes this SummaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryResponse&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalIn, totalIn) || other.totalIn == totalIn)&&(identical(other.totalOut, totalOut) || other.totalOut == totalOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,totalIn,totalOut);

@override
String toString() {
  return 'SummaryResponse(totalItems: $totalItems, totalIn: $totalIn, totalOut: $totalOut)';
}


}

/// @nodoc
abstract mixin class $SummaryResponseCopyWith<$Res>  {
  factory $SummaryResponseCopyWith(SummaryResponse value, $Res Function(SummaryResponse) _then) = _$SummaryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'items_in') int totalIn,@JsonKey(name: 'items_out') int totalOut
});




}
/// @nodoc
class _$SummaryResponseCopyWithImpl<$Res>
    implements $SummaryResponseCopyWith<$Res> {
  _$SummaryResponseCopyWithImpl(this._self, this._then);

  final SummaryResponse _self;
  final $Res Function(SummaryResponse) _then;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = null,Object? totalIn = null,Object? totalOut = null,}) {
  return _then(_self.copyWith(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalIn: null == totalIn ? _self.totalIn : totalIn // ignore: cast_nullable_to_non_nullable
as int,totalOut: null == totalOut ? _self.totalOut : totalOut // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SummaryResponse implements SummaryResponse {
  const _SummaryResponse({@JsonKey(name: 'total_items') required this.totalItems, @JsonKey(name: 'items_in') required this.totalIn, @JsonKey(name: 'items_out') required this.totalOut});
  factory _SummaryResponse.fromJson(Map<String, dynamic> json) => _$SummaryResponseFromJson(json);

@override@JsonKey(name: 'total_items') final  int totalItems;
@override@JsonKey(name: 'items_in') final  int totalIn;
@override@JsonKey(name: 'items_out') final  int totalOut;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryResponseCopyWith<_SummaryResponse> get copyWith => __$SummaryResponseCopyWithImpl<_SummaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryResponse&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalIn, totalIn) || other.totalIn == totalIn)&&(identical(other.totalOut, totalOut) || other.totalOut == totalOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,totalIn,totalOut);

@override
String toString() {
  return 'SummaryResponse(totalItems: $totalItems, totalIn: $totalIn, totalOut: $totalOut)';
}


}

/// @nodoc
abstract mixin class _$SummaryResponseCopyWith<$Res> implements $SummaryResponseCopyWith<$Res> {
  factory _$SummaryResponseCopyWith(_SummaryResponse value, $Res Function(_SummaryResponse) _then) = __$SummaryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'items_in') int totalIn,@JsonKey(name: 'items_out') int totalOut
});




}
/// @nodoc
class __$SummaryResponseCopyWithImpl<$Res>
    implements _$SummaryResponseCopyWith<$Res> {
  __$SummaryResponseCopyWithImpl(this._self, this._then);

  final _SummaryResponse _self;
  final $Res Function(_SummaryResponse) _then;

/// Create a copy of SummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = null,Object? totalIn = null,Object? totalOut = null,}) {
  return _then(_SummaryResponse(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalIn: null == totalIn ? _self.totalIn : totalIn // ignore: cast_nullable_to_non_nullable
as int,totalOut: null == totalOut ? _self.totalOut : totalOut // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
