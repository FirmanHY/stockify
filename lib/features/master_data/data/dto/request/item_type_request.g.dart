// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemTypeRequest _$ItemTypeRequestFromJson(Map<String, dynamic> json) =>
    _ItemTypeRequest(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      search: json['search'] as String?,
    );

Map<String, dynamic> _$ItemTypeRequestToJson(_ItemTypeRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'search': instance.search,
    };
