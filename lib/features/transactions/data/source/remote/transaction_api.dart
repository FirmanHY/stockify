import 'package:dio/dio.dart';
import '../../dto/request/transaction_request.dart';
import '../../dto/response/transaction_response.dart';

class TransactionApi {
  final Dio dio;

  TransactionApi(this.dio);

  Future<void> create(TransactionRequest request) async {
    await dio.post('/transactions', data: request.toJson());
  }

  Future<List<TransactionResponse>> getAll() async {
    final response = await dio.get('/transactions');
    final List raw = response.data['data']['data'];
    return raw.map((e) => TransactionResponse.fromJson(e)).toList();
  }
}
