import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/dashboard.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/transaction.dart';
import 'package:fhcs/core/data/user_info.dart';
import 'package:fhcs/core/data/withdrawal.dart';

abstract class IHomeRepository {
  Future<Either<Failure, ApiResponse<UserInfoData>>> userProfile();
  Future<Either<Failure, ApiResponse<DashboardData>>> fetchDashboardData();
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> initiateFunding(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> verifyFunding(
      String refId);
  Future<Either<Failure, ApiResponse<List<TransactionData>>>> transactions();
  Future<Either<Failure, ApiResponse<WithdrawalData>>> initiateWithdrawal(
      Map<String, dynamic> payload);
}
