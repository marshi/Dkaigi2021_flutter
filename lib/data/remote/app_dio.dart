import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

import '../../constants.dart';

// ignore: prefer_mixin
class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options?.baseUrl ?? Constants.of().endpoint,
      contentType: options?.contentType ?? 'application/json',
      connectTimeout: options?.connectTimeout ?? 300000,
      sendTimeout: options?.sendTimeout ?? 300000,
      receiveTimeout: options?.receiveTimeout ?? 300000,
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());
    }));

    // Firebase Performance
    // TODO: dio_firebase_performance does not yet support NNBD.
    // interceptors.add(DioFirebasePerformanceInterceptor());

    if (kDebugMode) {
      // Local Log
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();

  factory AppDio.instance(BaseOptions? options) {
    return AppDio._();
  }
}
