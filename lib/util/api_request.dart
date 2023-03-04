import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../constants/constants.dart';
import 'interceptor.dart';
import 'logger.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: Constants.baseUrl,
            connectTimeout: Constants.responseTimeOut,
            receiveTimeout: Constants.responseTimeOut,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
            PrettyDioLogger(),
          ]);

  late final Dio dio;
}
