import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:scb_arch_demo/utils/config/app_config.dart';

import '../interceptor/header_interceptor.dart';
import '../interceptor/log_interceptor.dart';
import '../interceptor/token_interceptor.dart';

enum DioBuilderType { withToken, ignoredToken, refresh }

class DioBuilder extends DioMixin implements Dio {
  final String contentType = 'application/json';
  final int connectionTimeOutMls = 30000;
  final int readTimeOutMls = 30000;
  final int writeTimeOutMls = 30000;

  DioBuilder(
      {bool ignoredToken = false,
      required BaseOptions options,
      Dio? dioRefresh}) {
    options = BaseOptions(
      baseUrl: options.baseUrl,
      contentType: contentType,
      connectTimeout: Duration(milliseconds: connectionTimeOutMls),
      receiveTimeout: Duration(milliseconds: readTimeOutMls),
      sendTimeout: Duration(milliseconds: writeTimeOutMls),
    );

    this.options = options;

    interceptors.add(HeaderInterceptor());

    if (!ignoredToken && dioRefresh != null) {
      interceptors.add(TokenInterceptor(dioRefresh));
    }

    if (kDebugMode) {
      interceptors.add(
        CustomLogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          error: true,
          maxWidth: 100,
        ),
      );
    }

    // Create default http client
    httpClientAdapter = IOHttpClientAdapter();

    final proxy = AppConfig.currentProxy;
    if (proxy != null) {
      (httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return Platform.isAndroid;
        };
        client.findProxy = (url) {
          return 'PROXY $proxy';
        };

        return null;
      };
    }
  }
}
