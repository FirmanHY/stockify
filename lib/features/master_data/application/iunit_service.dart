import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

abstract interface class IUnitService {
  Future<Result<PaginatedResponse<UnitResponse>, Failure>> getUnits({
    int page,
    int limit,
    String? search,
  });
}
