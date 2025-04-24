import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@freezed
abstract class ItemResponse with _$ItemResponse {
  const factory ItemResponse({
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'item_name') required String itemName,
    @JsonKey(name: 'type_id') required String typeId,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'type_name') required String typeName,
    @JsonKey(name: 'unit_name') required String unitName,
    @JsonKey(name: 'minimum_stock') required int minimumStock,
    required String image,
    required int stock,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
