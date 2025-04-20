// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemRequest _$ItemRequestFromJson(Map<String, dynamic> json) => _ItemRequest(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  search: json['search'] as String?,
  lowStockOnly: json['low_stock_only'] as bool?,
);

Map<String, dynamic> _$ItemRequestToJson(_ItemRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'search': instance.search,
      'low_stock_only': instance.lowStockOnly,
    };
