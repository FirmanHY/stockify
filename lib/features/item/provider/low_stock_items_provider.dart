import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/item/data/dto/response/item_response.dart';
import 'package:stockify/features/item/application/item_service.dart';

final lowStockItemsProvider = FutureProvider.autoDispose<List<ItemResponse>>((ref) async {
  final service = ref.watch(itemServiceProvider);
  final result = await service.getItems(lowStockOnly: true);

  return result.when(
    (data) => data.data ?? [],
    (error) => throw error,
  );
});
