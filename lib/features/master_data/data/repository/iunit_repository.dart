import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/features/master_data/data/dto/request/create_unit_request.dart';
import 'package:stockify/features/master_data/data/dto/request/unit_request.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

abstract interface class IUnitRepository {
  Future<ApiResponse<PaginatedResponse<UnitResponse>>> getUnits(
    UnitRequest request,
  );

  Future<ApiResponse<UnitResponse>> createUnit(CreateUnitRequest request);

  Future<ApiResponse<UnitResponse>> updateUnit(
    String id,
    CreateUnitRequest request,
  );
  Future<ApiResponse<void>> deleteUnit(String id);
}
