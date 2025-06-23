import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/api/service/dio_client.dart';
import 'package:fhcs/core/api/service/endpoints.dart';
import 'package:fhcs/core/data/account_info.dart';
import 'package:fhcs/core/data/auth_info.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/dashboard.dart';
import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/core/data/investment_tenure.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/loan_repayment.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/data/referee_request.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/data/user_info.dart';
import 'package:fhcs/core/data/withdrawal.dart';

import 'service/contracts/api_client.dart';

class ApiServicesImpl implements ApiServices {
  final IApiClient apiClient;

  ApiServicesImpl({required this.apiClient});

  @override
  Future<Either<Failure, ApiResponse<({String? token, AuthInfoData? data})>>>
      register(Map<String, dynamic> payload, File file) async {
    log("file path: ${file.path}");
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
            username: data['username'],
            monthlyContribution: data['monthly_contribution']?.toDouble(),
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
          return "";
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<UserInfoData>>> userProfile() =>
      apiClient.request<UserInfoData>(
        ApiEndpoint.userProfile,
        MethodType.get,
        (data) {
          return UserInfoData.fromJson(data);
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<DashboardData>>> fetchDashboardData() =>
      apiClient.request<DashboardData>(
        ApiEndpoint.dashboard,
        MethodType.get,
        (data) {
          return DashboardData.fromJson(data);
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> initiateFunding(
          Map<String, dynamic> payload) =>
      apiClient.request<PaymentInfoData>(
        ApiEndpoint.initiateFunding,
        MethodType.post,
        (data) {
          return PaymentInfoData.fromJson(data);
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyFunding(
          String refId) =>
      apiClient.request<PaymentInfoData>(
        ApiEndpoint.verifyFunding(refId),
        MethodType.post,
        (data) {
          return PaymentInfoData.fromJson(data);
        },
        null,
      );

  @override
  Future<Either<Failure, ApiResponse<List<TransactionData>>>> transactions() =>
      apiClient.request<List<TransactionData>>(
        ApiEndpoint.transactions,
        MethodType.get,
        (data) {
          return (data as List)
              .map((transactionData) =>
                  TransactionData.fromJson(transactionData))
              .toList();
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<WithdrawalData>>> initiateWithdrawal(
          Map<String, dynamic> payload) =>
      apiClient.request<WithdrawalData>(
        ApiEndpoint.initiateWithdrawal,
        MethodType.post,
        (data) {
          return WithdrawalData.fromJson(data);
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<List<RefereeData>>>> fetchReferees() =>
      apiClient.request<List<RefereeData>>(
        ApiEndpoint.referees,
        MethodType.get,
        (data) {
          return (data as List)
              .map((transactionData) => RefereeData.fromJson(transactionData))
              .toList();
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> loanRequest(
          Map<String, dynamic> payload) =>
      apiClient.request<PaymentInfoData>(
        ApiEndpoint.loanRequest,
        MethodType.post,
        (data) {
          return PaymentInfoData.fromJson(data);
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanApplications() =>
      apiClient.request<List<LoanData>>(
        "${ApiEndpoint.loanRequest}?status=application",
        MethodType.get,
        (data) {
          log("loan application data: $data");
          return (data as List)
              .map((transactionData) => LoanData.fromJson(transactionData))
              .toList();
        },
        null,
      );

  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> activeLoans() =>
      apiClient.request<List<LoanData>>(
        "${ApiEndpoint.loanRequest}?status=active",
        MethodType.get,
        (data) {
          return (data as List)
              .map((transactionData) => LoanData.fromJson(transactionData))
              .toList();
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanHistory() =>
      apiClient.request<List<LoanData>>(
        ApiEndpoint.loanRequest,
        MethodType.get,
        (data) {
          return (data as List)
              .map((transactionData) => LoanData.fromJson(transactionData))
              .toList();
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<List<InvestmentTypeData>>>>
      investmentType() => apiClient.request<List<InvestmentTypeData>>(
            ApiEndpoint.investmentType,
            MethodType.get,
            (data) {
              return (data['data'] as List)
                  .map((transactionData) =>
                      InvestmentTypeData.fromJson(transactionData))
                  .toList();
            },
            null,
          );
  @override
  Future<Either<Failure, ApiResponse<List<InvestmentTenureData>>>>
      investmentTenure() => apiClient.request<List<InvestmentTenureData>>(
            ApiEndpoint.investmentTenure,
            MethodType.get,
            (data) {
              return (data as List)
                  .map((transactionData) =>
                      InvestmentTenureData.fromJson(transactionData))
                  .toList();
            },
            null,
          );
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      loanRefereeRequest() => apiClient.request<List<RefereeRequestData>>(
            ApiEndpoint.refereeRequest,
            MethodType.get,
            (data) {
              return (data as List)
                  .map((transactionData) =>
                      RefereeRequestData.fromJson(transactionData))
                  .toList();
            },
            null,
            queryParameters: {"type": "loan"},
          );
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      investmentRefereeRequest() => apiClient.request<List<RefereeRequestData>>(
            ApiEndpoint.refereeRequest,
            MethodType.get,
            (data) {
              return (data as List)
                  .map((transactionData) =>
                      RefereeRequestData.fromJson(transactionData))
                  .toList();
            },
            null,
            queryParameters: {"type": "investment"},
          );
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      refereeRequest() => apiClient.request<List<RefereeRequestData>>(
            ApiEndpoint.refereeRequest,
            MethodType.get,
            (data) {
              return (data as List)
                  .map((transactionData) =>
                      RefereeRequestData.fromJson(transactionData))
                  .toList();
            },
            null,
            queryParameters: {"type": "history"},
          );

  @override
  Future<Either<Failure, ApiResponse<LoanRepaymentData>>> initiateLoanRepayment(
          Map<String, dynamic> payload) =>
      apiClient.request<LoanRepaymentData>(
        ApiEndpoint.loanRepayment,
        MethodType.post,
        (data) {
          return LoanRepaymentData.fromJson(data);
        },
        payload,
      );
  @override
  Future<Either<Failure, ApiResponse<InvestmentData>>>
      initiateInvestmentRepayment(Map<String, dynamic> payload) =>
          apiClient.request<InvestmentData>(
            ApiEndpoint.investmentRepayment,
            MethodType.post,
            (data) {
              return InvestmentData.fromJson(data);
            },
            payload,
          );
  @override
  Future<Either<Failure, ApiResponse<AccountInfoData>>> accountDetails() =>
      apiClient.request<AccountInfoData>(
        ApiEndpoint.accountInfo,
        MethodType.get,
        (data) {
          return AccountInfoData.fromJson(data);
        },
        null,
      );
  @override
  Future<Either<Failure, ApiResponse<InvestmentData>>> createInvestment(
          {required Map<String, dynamic> payload}) =>
      apiClient.request<InvestmentData>(
        ApiEndpoint.createInvestment,
        MethodType.post,
        (data) {
          return InvestmentData.fromJson(data);
        },
        payload,
      );
  @override
  Future<Either<Failure, ApiResponse<List<InvestmentData>>>>
      fetchInvestment() => apiClient.request<List<InvestmentData>>(
            ApiEndpoint.createInvestment,
            MethodType.get,
            (data) {
              return (data as List)
                  .map((transactionData) =>
                      InvestmentData.fromJson(transactionData))
                  .toList();
            },
            null,
          );
  @override
  Future<Either<Failure, ApiResponse<String>>> changeRequestStatus(
          String requestId,
          {required Map<String, dynamic> payload}) =>
      apiClient.request<String>(
        ApiEndpoint.requestStatus(requestId),
        MethodType.post,
        (data) {
          return "";
        },
        payload,
      );
}
