import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_type_request.freezed.dart';
part 'item_type_request.g.dart';

@freezed
abstract class ItemTypeRequest with _$ItemTypeRequest {
  const factory ItemTypeRequest({int? page, int? limit, String? search}) =
      _ItemTypeRequest;

  factory ItemTypeRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeRequestFromJson(json);
}
