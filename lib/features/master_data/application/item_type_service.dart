import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/master_data/application/iitem_type_service.dart';
import 'package:stockify/features/master_data/data/dto/request/item_type_request.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/repository/iitem_type_repository.dart';
import 'package:stockify/features/master_data/data/repository/item_type_repository.dart';

final itemTypeServiceProvider = Provider.autoDispose<IItemTypeService>((ref) {
  final repository = ref.watch(itemTypeRepositoryProvider);
  return ItemTypeService(repository);
});

class ItemTypeService implements IItemTypeService {
  final IItemTypeRepository _repository;

  ItemTypeService(this._repository);

  @override
  Future<Result<PaginatedResponse<ItemTypeResponse>, Failure>> getItemTypes({
    int page = 1,
    int limit = 10,
    String? search,
  }) async {
    try {
      final request = ItemTypeRequest(page: page, limit: limit, search: search);
      final response = await _repository.getItemTypes(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
