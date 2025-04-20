import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    required int page,
    required int limit,
    @JsonKey(name: 'total_data') required int totalData,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
