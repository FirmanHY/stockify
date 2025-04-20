import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_type_response.freezed.dart';
part 'item_type_response.g.dart';

@freezed
abstract class ItemTypeResponse with _$ItemTypeResponse {
  const factory ItemTypeResponse({
    @JsonKey(name: 'type_id') required String typeId,
    @JsonKey(name: 'type_name') required String typeName,
  }) = _ItemTypeResponse;

  factory ItemTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeResponseFromJson(json);
}
