import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/core/storage/storage_constant.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';

class AuthRepository implements IAuthRepository {
  final IAppStorage localStorage;
  final ApiServices apiServices;

  AuthRepository({required this.localStorage, required this.apiServices});

  @override
  Future<Either<Failure, ApiResponse<String>>> register(
          Map<String, dynamic> payload, File file) =>
      apiServices.register(payload, file);

  @override
  Future<Either<Failure, ApiResponse<String>>> uploadFile(File file) =>
      apiServices.uploadFile(file);

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> verifyOtp(
          Map<String, dynamic> payload) =>
      apiServices.verifyOtp(payload);

  @override
  Future<void> saveToken(String token) =>
      localStorage.saveString(StorageConstant.accessToken, token);

  @override
  Future<void> clearToken() =>
      localStorage.removeValue(StorageConstant.accessToken);

  @override
  Future<void> saveRegistrationToken(String regToken) =>
      localStorage.saveString(StorageConstant.regToken, regToken);

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> nokDetail(
          Map<String, dynamic> payload) =>
      apiServices.nokDetail(payload);

  @override
  Future<Either<Failure, ApiResponse<List<BankData>>>> bankList() =>
      apiServices.bankList();

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> bankDetail(
          Map<String, dynamic> payload) =>
      apiServices.bankDetail(payload);

  @override
  Future<Either<Failure, ApiResponse<String>>> setPassword(
          Map<String, dynamic> payload) =>
      apiServices.setPassword(payload);

  @override
  Future<Either<Failure, ApiResponse<LoginData>>> login(
          Map<String, dynamic> payload) =>
      apiServices.login(payload);

  @override
  Future<void> saveAuthToken(
      {required String accessToken, required String refreshToken}) async {
    await localStorage.saveString(StorageConstant.accessToken, accessToken);
    await localStorage.saveString(StorageConstant.refreshToken, refreshToken);
  }
}
