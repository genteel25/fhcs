import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/auth_info.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/payment.dart';

abstract class IAuthRepository {
  Future<Either<Failure, ApiResponse<({String? token, AuthInfoData? data})>>>
      register(Map<String, dynamic> payload, File file);
  Future<Either<Failure, ApiResponse<String>>> uploadFile(File file);
  Future<Either<Failure, ApiResponse<InfoData>>> verifyOtp(
      Map<String, dynamic> payload);
  Future<void> saveToken(String token);
  Future<void> clearToken();
  Future<void> saveRegistrationToken(String regToken);
  Future<Either<Failure, ApiResponse<InfoData>>> nokDetail(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<List<BankData>>>> bankList();
  Future<Either<Failure, ApiResponse<InfoData>>> bankDetail(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<String>>> setPassword(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<LoginData>>> login(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyMembershipPayment(
      String refNo);
  Future<void> saveAuthToken(
      {required String accessToken, required String refreshToken});
}
