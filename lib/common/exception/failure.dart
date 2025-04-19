import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure implements Exception {
  const factory Failure({
    required String message,
    required int statusCode,
    Exception? exception,
    @Default(StackTrace.empty) StackTrace stackTrace,
  }) = _Failure;

  factory Failure.fromDioException(DioException e, StackTrace stackTrace) {
    final response = e.response;
    final statusCode = response?.statusCode ?? 500;
    final data = response?.data;

    String message = 'Unknown error occurred';

    if (data is Map<String, dynamic>) {
      final topMessage = data['message']?.toString();
      final nestedMessage =
          (data['error'] is Map) ? data['error']['message']?.toString() : null;

      message = [topMessage, nestedMessage].where((m) => m != null).join(' - ');

      final details =
          (data['error'] is Map)
              ? _parseDetails(data['error']['details'])
              : null;

      if (details != null) {
        message = details;
      }
    }

    return Failure(
      message: message,
      statusCode: statusCode,
      exception: e,
      stackTrace: stackTrace,
    );
  }

  static String? _parseDetails(dynamic details) {
    if (details is Map<String, dynamic>) {
      return details.entries.map((e) => '${e.value}').join(', ');
    }
    return details?.toString();
  }
}
