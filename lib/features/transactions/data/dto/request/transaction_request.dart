import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request.freezed.dart';
part 'transaction_request.g.dart';

@freezed
abstract class TransactionRequest with _$TransactionRequest {
  const factory TransactionRequest({
    @JsonKey(name: 'item_id') required String itemId,
    required DateTime date,
    required int quantity,
    @JsonKey(name: 'transaction_type') required String transactionType,
    required String description,
  }) = _TransactionRequest;

  factory TransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestFromJson(json);
}
