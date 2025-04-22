import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request.freezed.dart';
part 'transaction_request.g.dart';

@freezed
class TransactionRequest with _$TransactionRequest {
  const factory TransactionRequest({
    @JsonKey(name: 'item_id') required String itemId,
    required DateTime date,
    required int quantity,
    @JsonKey(name: 'transaction_type') required String transactionType,
    required String description,
  }) = _TransactionRequest;

  factory TransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestFromJson(json);
      
        @override
        // TODO: implement date
        DateTime get date => throw UnimplementedError();
      
        @override
        // TODO: implement description
        String get description => throw UnimplementedError();
      
        @override
        // TODO: implement itemId
        String get itemId => throw UnimplementedError();
      
        @override
        // TODO: implement quantity
        int get quantity => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement transactionType
        String get transactionType => throw UnimplementedError();
}
