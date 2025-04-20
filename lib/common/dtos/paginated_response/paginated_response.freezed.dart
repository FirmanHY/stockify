// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedResponse<T> {

 List<T>? get data; Pagination get pagination;
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith => _$PaginatedResponseCopyWithImpl<T, PaginatedResponse<T>>(this as PaginatedResponse<T>, _$identity);

  /// Serializes this PaginatedResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResponse<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'PaginatedResponse<$T>(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<T,$Res>  {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value, $Res Function(PaginatedResponse<T>) _then) = _$PaginatedResponseCopyWithImpl;
@useResult
$Res call({
 List<T>? data, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$PaginatedResponseCopyWithImpl<T,$Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse<T> _self;
  final $Res Function(PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const _PaginatedResponse({final  List<T>? data, required this.pagination}): _data = data;
  factory _PaginatedResponse.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginatedResponseFromJson(json,fromJsonT);

 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Pagination pagination;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResponseCopyWith<T, _PaginatedResponse<T>> get copyWith => __$PaginatedResponseCopyWithImpl<T, _PaginatedResponse<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginatedResponseToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResponse<T>&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'PaginatedResponse<$T>(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<T,$Res> implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse<T> value, $Res Function(_PaginatedResponse<T>) _then) = __$PaginatedResponseCopyWithImpl;
@override @useResult
$Res call({
 List<T>? data, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$PaginatedResponseCopyWithImpl<T,$Res>
    implements _$PaginatedResponseCopyWith<T, $Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse<T> _self;
  final $Res Function(_PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = null,}) {
  return _then(_PaginatedResponse<T>(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
