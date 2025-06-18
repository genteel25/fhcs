import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/dashboard.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/data/user_info.dart';
import 'package:fhcs/core/data/withdrawal.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';

class HomeRepository implements IHomeRepository {
  final IAppStorage localStorage;
  final ApiServices apiServices;

  HomeRepository({required this.localStorage, required this.apiServices});

  @override
  Future<Either<Failure, ApiResponse<UserInfoData>>> userProfile() =>
      apiServices.userProfile();

  @override
  Future<Either<Failure, ApiResponse<DashboardData>>> fetchDashboardData() =>
      apiServices.fetchDashboardData();

  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> initiateFunding(
          Map<String, dynamic> payload) =>
      apiServices.initiateFunding(payload);

  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyFunding(
          String refId) =>
      apiServices.verifyFunding(refId);

  @override
  Future<Either<Failure, ApiResponse<List<TransactionData>>>> transactions() =>
      apiServices.transactions();

  @override
  Future<Either<Failure, ApiResponse<WithdrawalData>>> initiateWithdrawal(
          Map<String, dynamic> payload) =>
      apiServices.initiateWithdrawal(payload);
}
