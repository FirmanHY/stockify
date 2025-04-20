import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_request.freezed.dart';
part 'unit_request.g.dart';

@freezed
abstract class UnitRequest with _$UnitRequest {
  const factory UnitRequest({int? page, int? limit, String? search}) =
      _UnitRequest;

  factory UnitRequest.fromJson(Map<String, dynamic> json) =>
      _$UnitRequestFromJson(json);
}
