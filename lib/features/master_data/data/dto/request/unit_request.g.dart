// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnitRequest _$UnitRequestFromJson(Map<String, dynamic> json) => _UnitRequest(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  search: json['search'] as String?,
);

Map<String, dynamic> _$UnitRequestToJson(_UnitRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'search': instance.search,
    };
