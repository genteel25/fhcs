import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fhcs/core/api/service/api_response_impl.dart';
import 'package:fhcs/core/api/service/contracts/api_client.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import '../../../config/flavor/app_flavor.dart';
import '../exceptions/api_exception.dart';
import '../exceptions/contracts/failure.dart';
import '../network/network_info.dart';

enum MethodType { post, get, put, delete, patch }

class DioClient implements IApiClient {
  late Dio _dio;
  late NetworkInfo networkInfo;

  factory DioClient.createInstance(NetworkInfo value) {
    return DioClient(value);
  }

  DioClient(this.networkInfo) {
    _dio = Dio(BaseOptions(baseUrl: env.baseUrl))
      ..options.connectTimeout = const Duration(seconds: 60)
      ..options.receiveTimeout = const Duration(seconds: 60)
      ..options.sendTimeout = const Duration(seconds: 60)
      // ..options.headers = headers
      // ..options.followRedirects = false

      // ..interceptors.add(DioFirebasePerformanceInterceptor())
      ..interceptors.add(LogInterceptor(
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        requestHeader: kDebugMode,
      ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options, handler) async {
            handler.next(options);
          },
          onResponse: (e, handler) async {
            return handler.next(e);
          },
          onError: (error, handler) async {
            if (error.response?.statusCode == 401) {
              return handler.next(error);
            } else {
              return handler.next(error);
            }
          },
        ),
      );
  }

  @override
  Future<Either<Failure, ApiResponse<T>>> request<T>(String url,
      MethodType method, T Function(dynamic) fromJson, dynamic params,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      String token = await GetIt.I
          .get<IAppStorage>()
          .fetchString(StorageConstant.accessToken);
      log("accessToken: $token");
      String regToken = await GetIt.I
          .get<IAppStorage>()
          .fetchString(StorageConstant.regToken);
      Options options = Options(headers: {
        if (token.isNotEmpty) "Authorization": "Bearer $token",
        if (regToken.isNotEmpty) "X-Token": regToken,
      });
      Response response;
      switch (method) {
        case MethodType.post:
          response = await _dio.post(
            url,
            data: params,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case MethodType.delete:
          response = await _dio.delete(
            url,
            data: params,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case MethodType.patch:
          response = await _dio.patch(
            url,
            data: params,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case MethodType.get:
          response = await _dio.get(
            url,
            data: params,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case MethodType.put:
          response = await _dio.put(
            url,
            data: params,
            queryParameters: queryParameters,
            options: options,
          );
          break;
      }
      if (response.statusCode == 204 && method == MethodType.patch) {
        return right(ApiResponseImpl<T>(
          null,
          '',
          'success',
          '',
        ));
      } else {
        if (isSuccessResponse(response.statusCode ?? 500)) {
          return response.data?.containsKey("data") ?? false
              ? right(ApiResponseImpl<T>(
                  fromJson(response.data['data']),
                  response.data?['errors'],
                  response.data?['message'],
                  response.data?['responseCode'],
                  count: response.data?['count'].toString(),
                  previous: response.data?['previous'],
                  next: response.data?['next'],
                  extraData: {
                      if (response.data.containsKey('stage'))
                        "stage": response.data['stage'],
                      if (response.data.containsKey('registration_token'))
                        "regToken": response.data['registration_token']
                    }))
              : right(ApiResponseImpl<T>(
                  null,
                  response.data?['errors'] ?? '',
                  response.data?['message'] ?? '',
                  response.data?['responseCode'] ?? '',
                  count: response.data?['count'].toString(),
                  previous: response.data?['previous'],
                  next: response.data?['next'],
                  extraData: {
                    if (response.data.containsKey('stage'))
                      "stage": response.data['stage'],
                    if (response.data.containsKey('registration_token'))
                      "regToken": response.data['registration_token']
                  },
                ));
        } else {
          return left(
            BadResponseFailure(
              message: response.data?['message'] ?? 'An error occurred',
            ),
          );
        }
      }
    } on DioException catch (dioError) {
      if (dioError.response?.statusCode == null &&
          dioError.type != DioExceptionType.connectionError) {
        return right(ApiResponseImpl<T>(
          null,
          '',
          '',
          '',
        ));
      }
      return left(_handleDioError(dioError));
    }
  }

  bool isSuccessResponse(int responseCode) {
    return responseCode == 200 || responseCode == 201;
  }

  @override
  Future<Either<Failure, ApiResponse<T>>> download<T>(
      String url, String fileName, T Function(dynamic) fromJson, dynamic params,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      await _dio.download(
        url,
        fileName,
        data: params,
        queryParameters: queryParameters,
      );
      return right(ApiResponseImpl<T>(
        fromJson("response.data"),
        "response.data",
        "response.data",
        "response.data",
      ));
    } on DioException catch (dioError) {
      return left(_handleDioError(dioError));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<T>>> multipartRequest<T>(String url,
      MethodType method, T Function(dynamic) fromJson, dynamic params,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      Response response;
      String token = await GetIt.I
          .get<IAppStorage>()
          .fetchString(StorageConstant.accessToken);
      log("accessToken: $token");
      String regToken = await GetIt.I
          .get<IAppStorage>()
          .fetchString(StorageConstant.regToken);
      Options options = Options(headers: {
        if (token.isNotEmpty) "Authorization": "Bearer $token",
        if (regToken.isNotEmpty) "X-Token": regToken,
      });
      response = await _dio.post(url, data: params, options: options);
      var requestResponse = ApiResponseImpl<T>(
        fromJson(response.data['data']),
        response.data['errors'],
        response.data['message'],
        response.data['responseCode'],
        count: response.data?['count'].toString(),
        previous: response.data?['previous'],
        next: response.data?['next'],
      );
      return right(requestResponse);
    } on DioException catch (dioError) {
      return left(_handleDioError(dioError));
    }
  }

  Failure _handleDioError(DioException error) {
    late Failure failureType;
    switch (error.type) {
      case DioExceptionType.cancel:
        failureType = CancelFailure();
        break;
      case DioExceptionType.connectionTimeout:
        failureType = ConnectionTimeOutFailure();
        break;
      case DioExceptionType.connectionError:
        failureType = ConnectionFailure();
        break;
      case DioExceptionType.badCertificate:
        failureType = BadCertificateFailure();
        break;
      case DioExceptionType.badResponse:
        failureType = switch (error.response?.statusCode ?? 500) {
          502 => BadResponseFailure(message: "An error occurred"),
          _ => BadResponseFailure(
              message: errorMessageHandler(error.response?.data)),
        };
        break;
      case DioExceptionType.receiveTimeout:
        failureType = ReceivedTimeOutFailure();
        break;
      case DioExceptionType.sendTimeout:
        failureType = SendTimeOutFailure();
        break;
      case DioExceptionType.unknown:
        failureType = ServerFailure();
        break;
    }
    return failureType;
  }

  String errorMessageHandler(dynamic error) {
    dynamic newMap = {};
    if (error.runtimeType != String) {
      newMap = Map<String, dynamic>.from(error);
    } else {
      newMap = error;
    }
    return switch (newMap) {
      String error => error,
      {"detail": String error} => error,
      {"message": String error} => error,
      {"errors": {"non_field_errors": List<dynamic> message}} =>
        message.first.toString(),
      {"errors": {"token": List<dynamic> message}} => message.first.toString(),
      {"errors": Map<String, dynamic> error} =>
        "${error.values.first.first.toString()}(${error.keys.first.toString()})",
      {"errors": {"username": List<dynamic> message}} => message.first,
      _ => newMap.values.first.first.toString(),
    };
  }
}
