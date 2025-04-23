import 'package:freezed_annotation/freezed_annotation.dart';

part 'low_stock_item_response.freezed.dart';
part 'low_stock_item_response.g.dart';

@freezed
abstract class LowStockItemResponse with _$LowStockItemResponse {
  const factory LowStockItemResponse({
    @JsonKey(name: 'item_name') required String itemName,
    @JsonKey(name: 'type_name') required String typeName,
    required int stock,
  }) = _LowStockItemResponse;

  factory LowStockItemResponse.fromJson(Map<String, dynamic> json) =>
      _$LowStockItemResponseFromJson(json);
}