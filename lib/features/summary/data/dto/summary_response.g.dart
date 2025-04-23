// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryResponse _$SummaryResponseFromJson(Map<String, dynamic> json) =>
    _SummaryResponse(
      totalItems: (json['total_items'] as num).toInt(),
      totalIn: (json['items_in'] as num).toInt(),
      totalOut: (json['items_out'] as num).toInt(),
    );

Map<String, dynamic> _$SummaryResponseToJson(_SummaryResponse instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'items_in': instance.totalIn,
      'items_out': instance.totalOut,
    };
