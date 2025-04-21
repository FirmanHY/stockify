import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/master_data/application/iunit_service.dart';
import 'package:stockify/features/master_data/data/dto/request/create_unit_request.dart';
import 'package:stockify/features/master_data/data/dto/request/unit_request.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';
import 'package:stockify/features/master_data/data/repository/iunit_repository.dart';
import 'package:stockify/features/master_data/data/repository/unit_repository.dart';

final unitServiceProvider = Provider.autoDispose<IUnitService>((ref) {
  final repository = ref.watch(unitRepositoryProvider);
  return UnitService(repository);
});

class UnitService implements IUnitService {
  final IUnitRepository _repository;

  UnitService(this._repository);

  @override
  Future<Result<PaginatedResponse<UnitResponse>, Failure>> getUnits({
    int page = 1,
    int limit = 10,
    String? search,
  }) async {
    try {
      final request = UnitRequest(page: page, limit: limit, search: search);
      final response = await _repository.getUnits(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<UnitResponse, Failure>> createUnit(String unitName) async {
    try {
      final request = CreateUnitRequest(unitName: unitName);
      final response = await _repository.createUnit(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<UnitResponse, Failure>> updateUnit(
    String id,
    String unitName,
  ) async {
    try {
      final request = CreateUnitRequest(unitName: unitName);
      final response = await _repository.updateUnit(id, request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<void, Failure>> deleteUnit(String id) async {
    try {
      final response = await _repository.deleteUnit(id);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
