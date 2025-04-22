import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
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
      
        @override
        // TODO: implement createdAt
        DateTime get createdAt => throw UnimplementedError();
      
        @override
        // TODO: implement currentStock
        int get currentStock => throw UnimplementedError();
      
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
        // TODO: implement itemName
        String get itemName => throw UnimplementedError();
      
        @override
        // TODO: implement quantity
        int get quantity => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement transactionId
        String get transactionId => throw UnimplementedError();
      
        @override
        // TODO: implement transactionType
        String get transactionType => throw UnimplementedError(); 
}
