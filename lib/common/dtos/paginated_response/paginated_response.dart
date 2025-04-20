import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockify/common/dtos/pagination/pagination.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    List<T>? data,
    required Pagination pagination,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$PaginatedResponseFromJson(json, fromJsonT);
}
