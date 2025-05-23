import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/api/service/dio_client.dart';
import 'package:fhcs/core/api/service/endpoints.dart';
import 'package:fhcs/core/data/auth_info.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';

import 'service/contracts/api_client.dart';

class ApiServicesImpl implements ApiServices {
  final IApiClient apiClient;

  ApiServicesImpl({required this.apiClient});

  @override
  Future<Either<Failure, ApiResponse<({String? token, AuthInfoData? data})>>>
      register(Map<String, dynamic> payload, File file) async {
    return apiClient.multipartRequest<({String? token, AuthInfoData? data})>(
      ApiEndpoint.signup,
      MethodType.post,
      (data) {
        if (data.containsKey('verification_info')) {
          return (token: data['verification_info']['token'], data: null);
        } else if (data.containsKey('basic_info')) {
          log("basic_info: ${data['payment_info']}");
          // final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          return (token: null, data: AuthInfoData.fromJson(data));
          // return (token: null, data: (basicInfo: basicInfo, personalData: null, nokInfoData: null, paymentData: null));
        }
        return (token: null, data: null);
      },

      // (data) => data['verification_info']['token'],
      // payload,
      FormData.fromMap({
        ...payload,
        if (file.path.isNotEmpty)
          "file": await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
      }),
    );
  }

  @override
  Future<Either<Failure, ApiResponse<String>>> uploadFile(File file) async =>
      apiClient.multipartRequest<String>(
        ApiEndpoint.uploadFile,
        MethodType.post,
        (data) => data['verification_info']['token'],
        FormData.fromMap({
          "file": await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
        }),
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> verifyOtp(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.verifyOtp,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: null,
            paymentInfoData: null,
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> nokDetail(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.nokDetail,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          final nokInfo = NokInfoData.fromJson(data['nok_info']['primary_nok']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: nokInfo,
            paymentInfoData: null,
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> bankDetail(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.nokDetail,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          final nokInfo = NokInfoData.fromJson(data['nok_info']['primary_nok']);
          final paymentData = PaymentInfoData.fromJson(data['payment_info']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: nokInfo,
            paymentInfoData: paymentData,
          );
        },
        payload,
      );
  @override
  Future<Either<Failure, ApiResponse<String>>> setPassword(
          Map<String, dynamic> payload) =>
      apiClient.request<String>(
        ApiEndpoint.setPassword,
        MethodType.post,
        (data) {
          return "Password created successfully";
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<LoginData>>> login(
          Map<String, dynamic> payload) =>
      apiClient.request<LoginData>(
        ApiEndpoint.login,
        MethodType.post,
        (data) {
          return (
            accessToken: data['access_token'],
            refreshToken: data['refresh_token'],
            fullName: data['full_name'],
            username: data['username']
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<List<BankData>>>> bankList() =>
      apiClient.request<List<BankData>>(
        ApiEndpoint.bankList,
        MethodType.get,
        (data) => (data as List)
            .map((userData) => BankData.fromJson(userData))
            .toList(),
        null,
      );

  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyMembershipPayment(
          String refNo) =>
      apiClient.request<PaymentInfoData>(
        ApiEndpoint.verifyMembershipPayment,
        MethodType.post,
        (data) => PaymentInfoData.fromJson(data),
        {
          "ref_id": refNo,
        },
      );

  @override
  Future<Either<Failure, ApiResponse<String>>> setMonthlyContribution(
          Map<String, dynamic> payload) =>
      apiClient.request<String>(
        ApiEndpoint.setMonthlyContribution,
        MethodType.post,
        (data) {
          log("monthly contribution data: $data");
          return "";
        },
        payload,
      );
}
