import 'dart:io';

import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:scb_arch_demo/l10n/generated/l10n.dart';

import 'model/common/error_response.dart';

enum AppExceptionType {
  network,
  mapping,
  unauthorized,
  cancel,
  timeout,
  server,
  serverRetry,
  serverValidate,
  invalidInput,
  purchaseCancel,
  purchaseError,
  paymentRequired,
  unknown,
}

class AppException {
  final AppExceptionType type;
  final String message;
  final dynamic error;
  final String? title;
  final ErrorResponse? errorResponse;
  final int? headerCode;
  final StackTrace? stackTrace;

  static Map<String, String> serverErrors = {};
  static final Logger _logger = Logger();

  // Constructor
  AppException(
    this.type,
    this.message, {
    this.error,
    this.title,
    this.errorResponse,
    this.headerCode,
    this.stackTrace,
  }) {
    // Log the error message and stack trace if available
    if (stackTrace != null) {
      _logger.e("AppException: $message", error, stackTrace);
    } else {
      _logger.e("AppException: $message", error);
    }
  }

  // Factory method for invalid input error
  factory AppException.invalidInput(String message) {
    return AppException(AppExceptionType.invalidInput, message);
  }

  // Factory method for creating exceptions from DioError
  factory AppException.fromException(Exception exception) {
    var type = AppExceptionType.unknown;
    var message = '';
    String? title;
    ErrorResponse? errorResponse;
    int? headerCode;
    StackTrace? stackTrace;

    if (exception is DioException) {
      // Error message from DioError
      message = exception.message ?? S.current.common_error_message;
      headerCode = exception.response?.statusCode ?? -1;

      switch (exception.type) {
        case DioErrorType.connectionTimeout:
        case DioErrorType.receiveTimeout:
          type = AppExceptionType.timeout;
          message = S.current.common_error_message;
          break;
        case DioErrorType.sendTimeout:
          type = AppExceptionType.network;
          message = S.current.network_error;
          break;
        case DioExceptionType.badResponse:
          // Handle HTTP response errors, like 401, 500, etc.
          switch (headerCode) {
            case HttpStatus.badRequest: // 400
              type = AppExceptionType.serverValidate;
              break;
            case HttpStatus.unauthorized: // 401
            case HttpStatus.forbidden: // 403
              type = AppExceptionType.unauthorized;
              break;
            case HttpStatus.paymentRequired: // 402
              type = AppExceptionType.paymentRequired;
              break;
            default:
              type = AppExceptionType.server;
              break;
          }

          final response = exception.response;
          if (response != null) {
            try {
              // Parsing the server response body to ErrorResponse
              errorResponse = JsonMapper.fromMap<ErrorResponse>(response.data);
              title = errorResponse?.title;
              title = title?.isNotEmpty == true ? title : null;

              // Customizing error message based on the response
              final errorMessage =
                  errorResponse?.message ?? S.current.server_error_message;
              message = errorMessage.isEmpty
                  ? S.current.server_error_message
                  : errorMessage;
              if (headerCode >= 500 &&
                  headerCode < 600 &&
                  errorResponse?.code == null) {
                message = S.current.common_error_message;
              }
              if (errorResponse?.code != null) {
                message = serverErrors[errorResponse!.code] ?? message;
                message = '$message(${errorResponse.code})';
              }
            } catch (e) {
              return AppException(
                AppExceptionType.serverRetry,
                S.current.server_error_message,
                title: title,
                error: e,
                headerCode: headerCode,
                stackTrace: stackTrace,
              );
            }
          }
          break;
        case DioExceptionType.cancel:
          type = AppExceptionType.cancel;
          break;
        case DioExceptionType.unknown:
        default:
          if (exception.error is SocketException) {
            type = AppExceptionType.network;
            message = S.current.network_error;
          } else {
            type = AppExceptionType.unknown;
          }
          break;
      }
    } else {
      type = AppExceptionType.unknown;
      message = 'AppException: $exception';
    }

    return AppException(
      type,
      message,
      title: title,
      error: exception,
      errorResponse: errorResponse,
      headerCode: headerCode,
      stackTrace: stackTrace,
    );
  }

  // Factory method for creating exceptions from a generic Dart Error
  factory AppException.fromError(Error error) {
    return AppException(
      AppExceptionType.unknown,
      S.current.common_error_message,
      error: error,
      errorResponse: null,
      headerCode: null,
      stackTrace: error.stackTrace,
    );
  }

  // Initialization of server errors with localized messages
  static void initServerError() {
    serverErrors = {
      'S-0001': S.current.s_0001,
      // You can add more error codes as needed
    };
  }

  // To string representation of the exception for debugging
  @override
  String toString() {
    return '${type.name}: $message';
  }
}
