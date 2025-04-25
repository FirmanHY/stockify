import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stockify/features/reports/application/report_service.dart';
import 'package:stockify/features/reports/presentation/state/report_state.dart';
import 'package:share_plus/share_plus.dart';

final reportControllerProvider =
    StateNotifierProvider.autoDispose<ReportController, ReportState>((ref) {
      return ReportController(ref);
    });

class ReportController extends StateNotifier<ReportState> {
  final Ref ref;

  ReportController(this.ref) : super(const ReportState());

  Future<void> generateReportTransaction({
    required String type,
    required String startDate,
    required String endDate,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await ref
        .read(reportServiceProvider)
        .generateTransactionReport(
          type: type,
          startDate: startDate,
          endDate: endDate,
        );
    result.when(
      (filePath) async {
        debugPrint('File path: $filePath');
        final exists = await File(filePath).exists();
        debugPrint('File exists: $exists');

        if (exists) {
          await await Share.shareXFiles([
            XFile(filePath),
          ], text: 'Transaction Report');
        } else {
          debugPrint('File not found!');
        }
      },
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
      },
    );
  }

  Future<void> generateItemReport({required String lowStockOnly}) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await ref
        .read(reportServiceProvider)
        .generateItemReport(lowStockOnly: lowStockOnly);
    result.when(
      (filePath) async {
        debugPrint('File path: $filePath');
        final exists = await File(filePath).exists();
        debugPrint('File exists: $exists');

        if (exists) {
          await await Share.shareXFiles([
            XFile(filePath),
          ], text: 'Transaction Report');
        } else {
          debugPrint('File not found!');
        }
      },
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
      },
    );
  }

  Future<bool> requestStoragePermission() async {
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<String?> saveToDownloads(String filePath) async {
    final hasPermission = await requestStoragePermission();
    if (!hasPermission) return null;

    final file = File(filePath);
    if (!await file.exists()) return null;

    final downloadsDir = Directory('/storage/emulated/0/Download');
    final newPath = '${downloadsDir.path}/${file.uri.pathSegments.last}';

    await file.copy(newPath);
    return newPath;
  }
}
