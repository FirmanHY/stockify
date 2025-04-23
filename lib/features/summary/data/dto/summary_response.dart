import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_response.freezed.dart';
part 'summary_response.g.dart';

@freezed
abstract class SummaryResponse with _$SummaryResponse {
  const factory SummaryResponse({
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'items_in') required int totalIn,
    @JsonKey(name: 'items_out') required int totalOut,
  }) = _SummaryResponse;

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);
}
