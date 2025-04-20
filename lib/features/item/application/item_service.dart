import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/features/item/application/iitem_service.dart';
import 'package:stockify/features/item/data/dto/request/item_request.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/data/repository/iitem_repository.dart';
import 'package:stockify/features/item/data/repository/item_repository.dart';

final itemServiceProvider = Provider.autoDispose<IItemService>((ref) {
  final repository = ref.watch(itemRepositoryProvider);
  return ItemService(repository);
});

class ItemService implements IItemService {
  final IItemRepository _repository;

  ItemService(this._repository);

  @override
  Future<Result<PaginatedResponse<ItemResponse>, Failure>> getItems({
    int page = 1,
    int limit = 10,
    String? search,
    bool? lowStockOnly,
  }) async {
    try {
      final request = ItemRequest(
        page: page,
        limit: limit,
        search: search,
        lowStockOnly: lowStockOnly,
      );
      final response = await _repository.getItems(request);
      return Success(response.data);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
