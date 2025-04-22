// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    _TransactionResponse(
      transactionId: json['transaction_id'] as String,
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String,
      date: DateTime.parse(json['date'] as String),
      quantity: (json['quantity'] as num).toInt(),
      transactionType: json['transaction_type'] as String,
      description: json['description'] as String,
      currentStock: (json['current_stock'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$TransactionResponseToJson(
  _TransactionResponse instance,
) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'item_id': instance.itemId,
  'item_name': instance.itemName,
  'date': instance.date.toIso8601String(),
  'quantity': instance.quantity,
  'transaction_type': instance.transactionType,
  'description': instance.description,
  'current_stock': instance.currentStock,
  'created_at': instance.createdAt.toIso8601String(),
};
