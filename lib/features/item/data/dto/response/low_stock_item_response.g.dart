// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'low_stock_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LowStockItemResponse _$LowStockItemResponseFromJson(
  Map<String, dynamic> json,
) => _LowStockItemResponse(
  itemName: json['item_name'] as String,
  typeName: json['type_name'] as String,
  stock: (json['stock'] as num).toInt(),
);

Map<String, dynamic> _$LowStockItemResponseToJson(
  _LowStockItemResponse instance,
) => <String, dynamic>{
  'item_name': instance.itemName,
  'type_name': instance.typeName,
  'stock': instance.stock,
};
