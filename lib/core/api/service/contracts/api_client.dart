import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/service/dio_client.dart';

import '../../exceptions/contracts/failure.dart';
import 'api_response.dart';

abstract class IApiClient {
  Future<Either<Failure, ApiResponse<T>>> request<T>(
    String url,
    MethodType method,
    T Function(dynamic) fromJson,
    dynamic params, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<Failure, ApiResponse<T>>> multipartRequest<T>(String url,
      MethodType method, T Function(dynamic) fromJson, dynamic params,
      {Map<String, dynamic>? queryParameters});

  Future<Either<Failure, ApiResponse<T>>> download<T>(
      String url, String fileName, T Function(dynamic) fromJson, dynamic params,
      {Map<String, dynamic>? queryParameters});
}
