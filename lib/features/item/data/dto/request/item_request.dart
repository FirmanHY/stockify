import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_request.freezed.dart';
part 'item_request.g.dart';

@freezed
abstract class ItemRequest with _$ItemRequest {
  const factory ItemRequest({
    int? page,
    int? limit,
    String? search,
    @JsonKey(name: 'low_stock_only') bool? lowStockOnly,
  }) = _ItemRequest;

  factory ItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestFromJson(json);
}
