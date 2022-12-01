import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data is Map) {
      /// remove nulls from request body [options.data]
      (options.data as Map<dynamic, dynamic>).removeWhere((k, v) => v == null);
    }
    options.headers.addAll(
      {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    /// remove nulls from request queryParameters [options.queryParameters]
    (options.queryParameters).removeWhere((k, v) => v == null);

    return handler.next(options);
  }
}
