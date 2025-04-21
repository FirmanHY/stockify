import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/mixin/dio_exception_mapper.dart';
import 'package:stockify/features/master_data/data/dto/request/create_unit_request.dart';
import 'package:stockify/features/master_data/data/dto/request/unit_request.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';
import 'package:stockify/features/master_data/data/repository/iunit_repository.dart';
import 'package:stockify/features/master_data/data/source/remote/unit_api.dart';

final unitRepositoryProvider = Provider.autoDispose<IUnitRepository>((ref) {
  final unitApi = ref.watch(unitApiProvider);
  return UnitRepository(unitApi);
});

class UnitRepository with DioExceptionMapper implements IUnitRepository {
  final UnitApi _unitApi;

  UnitRepository(this._unitApi);

  @override
  Future<ApiResponse<PaginatedResponse<UnitResponse>>> getUnits(
    UnitRequest request,
  ) async {
    try {
      return await _unitApi.getUnits(request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<UnitResponse>> createUnit(
    CreateUnitRequest request,
  ) async {
    try {
      return await _unitApi.createUnit(request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<UnitResponse>> updateUnit(
    String id,
    CreateUnitRequest request,
  ) async {
    try {
      return await _unitApi.updateUnit(id, request);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }

  @override
  Future<ApiResponse<void>> deleteUnit(String id) async {
    try {
      return await _unitApi.deleteUnit(id);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    }
  }
}
