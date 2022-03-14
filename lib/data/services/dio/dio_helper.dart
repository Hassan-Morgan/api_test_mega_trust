import 'package:dio/dio.dart';
import 'package:mega_trust_api_task/data/services/dio/dio_end_points.dart';

class DioHelper {
  static late Dio dio;

  static initDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String path,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return dio.get(path);
  }
}