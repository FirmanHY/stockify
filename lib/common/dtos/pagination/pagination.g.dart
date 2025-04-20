// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalData: (json['total_data'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total_data': instance.totalData,
      'total_pages': instance.totalPages,
    };
