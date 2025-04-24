// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionListRequest _$TransactionListRequestFromJson(
  Map<String, dynamic> json,
) => _TransactionListRequest(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  search: json['search'] as String?,
  startDate: json['start_date'] as String?,
  endDate: json['end_date'] as String?,
  typeFilter: json['type'] as String?,
);

Map<String, dynamic> _$TransactionListRequestToJson(
  _TransactionListRequest instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'search': instance.search,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'type': instance.typeFilter,
};
