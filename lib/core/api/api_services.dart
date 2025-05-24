import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/auth_info.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/dashboard.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/data/user_info.dart';
import 'package:fhcs/core/data/withdrawal.dart';

import 'exceptions/contracts/failure.dart';

typedef LoginData = ({
  String accessToken,
  String refreshToken,
  String fullName,
  String username,
  double? monthlyContribution,
});

abstract class ApiServices {
  Future<Either<Failure, ApiResponse<({String? token, AuthInfoData? data})>>>
      register(Map<String, dynamic> payload, File file);
  Future<Either<Failure, ApiResponse<String>>> uploadFile(File file);
  Future<Either<Failure, ApiResponse<InfoData>>> verifyOtp(
      Map<String, dynamic> payload);
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
  Future<Either<Failure, ApiResponse<String>>> setMonthlyContribution(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<UserInfoData>>> userProfile();
  Future<Either<Failure, ApiResponse<DashboardData>>> fetchDashboardData();
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> initiateFunding(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyFunding(
      String refId);
  Future<Either<Failure, ApiResponse<List<TransactionData>>>> transactions();
  Future<Either<Failure, ApiResponse<WithdrawalData>>> initiateWithdrawal(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<List<RefereeData>>>> fetchReferees();
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> loanRequest(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanHistory();
  Future<Either<Failure, ApiResponse<List<LoanData>>>> activeLoans();
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanApplications();
}
