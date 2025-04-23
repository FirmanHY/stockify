import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    @JsonKey(name: 'transaction_id') required String transactionId,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'item_name') required String itemName,
    required DateTime date,
    required int quantity,
    @JsonKey(name: 'transaction_type') required String transactionType,
    required String description,
    @JsonKey(name: 'current_stock') required int currentStock,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
