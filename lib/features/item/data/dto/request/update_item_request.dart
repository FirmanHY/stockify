// lib/features/item/data/dto/request/update_item_request.dart
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_item_request.freezed.dart';

@freezed
abstract class UpdateItemRequest with _$UpdateItemRequest {
  const factory UpdateItemRequest({
    String? itemName,
    String? typeId,
    String? unitId,
    int? minimumStock,
    MultipartFile? image,
  }) = _UpdateItemRequest;
}

extension UpdateItemRequestFormData on UpdateItemRequest {
  FormData toFormData() {
    final formData = FormData();
    if (itemName != null) formData.fields.add(MapEntry('item_name', itemName!));
    if (typeId != null) formData.fields.add(MapEntry('type_id', typeId!));
    if (unitId != null) formData.fields.add(MapEntry('unit_id', unitId!));
    if (minimumStock != null) {
      formData.fields.add(MapEntry('minimum_stock', minimumStock.toString()));
    }
    if (image != null) formData.files.add(MapEntry('image', image!));
    return formData;
  }
}
