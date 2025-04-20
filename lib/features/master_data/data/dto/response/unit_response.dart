import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_response.freezed.dart';
part 'unit_response.g.dart';

@freezed
abstract class UnitResponse with _$UnitResponse {
  const factory UnitResponse({
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'unit_name') required String unitName,
  }) = _UnitResponse;

  factory UnitResponse.fromJson(Map<String, dynamic> json) =>
      _$UnitResponseFromJson(json);
}
