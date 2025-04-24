import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_item_request.freezed.dart';

@freezed
abstract class CreateItemRequest with _$CreateItemRequest {
  const factory CreateItemRequest({
    required String itemName,
    required String typeId,
    required String unitId,
    required int minimumStock,
    MultipartFile? image,
  }) = _CreateItemRequest;
}

extension CreateItemRequestFormData on CreateItemRequest {
  FormData toFormData() {
    final formData = FormData.fromMap({
      'item_name': itemName,
      'type_id': typeId,
      'unit_id': unitId,
      'minimum_stock': minimumStock.toString(),
    });
    if (image != null) {
      formData.files.add(MapEntry('image', image!));
    }
    return formData;
  }
}
