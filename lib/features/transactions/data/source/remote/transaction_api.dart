import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stockify/common/dtos/api_response/api_response.dart';
import 'package:stockify/common/dtos/paginated_response/paginated_response.dart';
import 'package:stockify/core/data/remote/end_point.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/transactions/data/dto/request/transaction_list_request.dart';
import 'package:stockify/features/transactions/data/dto/response/transaction_response.dart';

part 'transaction_api.g.dart';

final transactionApiProvider = Provider.autoDispose<TransactionApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return TransactionApi(dio);
});

@RestApi()
abstract class TransactionApi {
  factory TransactionApi(Dio dio) => _TransactionApi(dio);

  @GET(transactionsEndPoint)
  Future<ApiResponse<PaginatedResponse<TransactionResponse>>> getTransactions(
    @Queries() TransactionListRequest request,
  );
}
