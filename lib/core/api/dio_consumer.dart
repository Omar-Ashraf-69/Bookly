import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_points.dart';
import 'package:bookly/core/errors/exception.dart';
import 'package:dio/dio.dart';

class DioConsumer implements ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    // dio.options.headers;
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  @override
  Future get(
    String path, {
    data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.get(
        EndPoints.baseUrl,
        queryParameters: quearyParamteries,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future delete(
    String path, {
    data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,
  }) {
    throw ();
  }

  @override
  Future post(
    String path, {
    data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,
  }) {
    throw ();
  }

  @override
  Future put(
    String path, {
    data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,
  }) {
    throw ();
  }
}
