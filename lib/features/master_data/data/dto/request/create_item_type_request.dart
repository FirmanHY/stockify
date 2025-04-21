import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_item_type_request.freezed.dart';
part 'create_item_type_request.g.dart';

@freezed
abstract class CreateItemTypeRequest with _$CreateItemTypeRequest {
  const factory CreateItemTypeRequest({
    @JsonKey(name: 'type_name') required String typeName,
  }) = _CreateItemTypeRequest;

  factory CreateItemTypeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateItemTypeRequestFromJson(json);
}
