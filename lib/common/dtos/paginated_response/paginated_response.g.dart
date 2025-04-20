// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PaginatedResponse<T>(
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
  pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaginatedResponseToJson<T>(
  _PaginatedResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data?.map(toJsonT).toList(),
  'pagination': instance.pagination,
};
