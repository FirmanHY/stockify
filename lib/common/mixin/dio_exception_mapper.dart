import 'package:dio/dio.dart';
import 'package:stockify/common/exception/failure.dart';
import 'package:stockify/common/extension/string_harcoded.dart';

mixin DioExceptionMapper {
  Failure mapDioExceptionToFailure(DioException e, StackTrace stackTrace) {
    return switch (e.type) {
      DioExceptionType.badResponse => Failure.fromDioException(e, stackTrace),
      _ => Failure(
        message: _defaultErrorMessage(e),
        statusCode: e.response?.statusCode ?? 500,
        exception: e,
        stackTrace: stackTrace,
      ),
    };
  }

  String _defaultErrorMessage(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout => 'Connection timeout'.hardcoded,
      DioExceptionType.sendTimeout => 'Send timeout'.hardcoded,
      DioExceptionType.receiveTimeout => 'Receive timeout'.hardcoded,
      DioExceptionType.badCertificate => 'Invalid certificate'.hardcoded,
      DioExceptionType.cancel => 'Request cancelled'.hardcoded,
      DioExceptionType.connectionError => 'Connection error'.hardcoded,
      DioExceptionType.unknown => 'Unknown network error'.hardcoded,
      _ => 'Unexpected error occurred'.hardcoded,
    };
  }
}
