// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionRequest _$TransactionRequestFromJson(Map<String, dynamic> json) =>
    _TransactionRequest(
      itemId: json['item_id'] as String,
      date: DateTime.parse(json['date'] as String),
      quantity: (json['quantity'] as num).toInt(),
      transactionType: json['transaction_type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$TransactionRequestToJson(_TransactionRequest instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'date': instance.date.toIso8601String(),
      'quantity': instance.quantity,
      'transaction_type': instance.transactionType,
      'description': instance.description,
    };
