import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_list_request.freezed.dart';
part 'transaction_list_request.g.dart';

@freezed
abstract class TransactionListRequest with _$TransactionListRequest {
  const factory TransactionListRequest({
    int? page,
    int? limit,
    String? search,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'type') String? typeFilter,
  }) = _TransactionListRequest;

  factory TransactionListRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionListRequestFromJson(json);
}
