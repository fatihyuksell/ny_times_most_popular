import 'package:dio/dio.dart';
import 'package:fancy_dio_inspector/fancy_dio_inspector.dart';

class DioClient {
  static DioClient? _instance;

  DioClient._();

  static DioClient get instance => _instance ??= DioClient._();

  late final Dio client;

  Future<void> init() async {
    final BaseOptions baseOptions = BaseOptions(
      baseUrl: 'http://api.nytimes.com/svc/mostpopular/v2/viewed',
    );

    client = Dio(baseOptions);

    client.interceptors.addAll(
      [
        InterceptorsWrapper(
          onRequest: _requestInterceptor,
          onResponse: _responseInterceptor,
          onError: _errorInterceptor,
        ),
        FancyDioInterceptor(
          options: const FancyDioInspectorOptions(
            consoleOptions: FancyDioInspectorConsoleOptions(verbose: true),
          ),
        ),
      ],
    );
  }

  static Future<void> _requestInterceptor(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    const String sampleKey = "MKSVE7BA1jBzR7nFIc1cOtRVgbz9tX4A";
    options.queryParameters.addAll({'api-key': sampleKey});
    handler.next(options);
  }

  Future<void> _responseInterceptor(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    handler.next(response);
  }

  Future<void> _errorInterceptor(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    handler.next(error);
  }
}
