import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/features/summary/application/summary_service.dart';
import 'package:stockify/features/summary/data/repository/summary_repository.dart';
import 'package:stockify/features/summary/data/source/remote/summary_api.dart';
import 'package:stockify/core/data/remote/network_service.dart';
import 'package:stockify/features/summary/data/repository/isummary_repository.dart';

final summaryApiProvider = Provider.autoDispose<SummaryApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return SummaryApi(dio);
});

final summaryRepositoryProvider = Provider.autoDispose<ISummaryRepository>((ref) {
  final api = ref.watch(summaryApiProvider);
  return SummaryRepository(api);
});

final summaryServiceProvider = Provider.autoDispose<SummaryService>((ref) {
  final repo = ref.watch(summaryRepositoryProvider);
  return SummaryService(repo);
});

final summaryDataProvider = FutureProvider.autoDispose((ref) {
  final service = ref.watch(summaryServiceProvider);
  return service.getSummary();
});
