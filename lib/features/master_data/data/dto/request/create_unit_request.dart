import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_unit_request.freezed.dart';
part 'create_unit_request.g.dart';

@freezed
abstract class CreateUnitRequest with _$CreateUnitRequest {
  const factory CreateUnitRequest({
    @JsonKey(name: 'unit_name') required String unitName,
  }) = _CreateUnitRequest;

  factory CreateUnitRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUnitRequestFromJson(json);
}
