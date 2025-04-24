// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) =>
    _ItemResponse(
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String,
      typeId: json['type_id'] as String,
      unitId: json['unit_id'] as String,
      typeName: json['type_name'] as String,
      unitName: json['unit_name'] as String,
      minimumStock: (json['minimum_stock'] as num).toInt(),
      image: json['image'] as String,
      stock: (json['stock'] as num).toInt(),
    );

Map<String, dynamic> _$ItemResponseToJson(_ItemResponse instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'type_id': instance.typeId,
      'unit_id': instance.unitId,
      'type_name': instance.typeName,
      'unit_name': instance.unitName,
      'minimum_stock': instance.minimumStock,
      'image': instance.image,
      'stock': instance.stock,
    };
