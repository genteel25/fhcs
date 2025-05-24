import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/referee.dart';

abstract class ILoanRepository {
  Future<Either<Failure, ApiResponse<List<RefereeData>>>> fetchReferees();
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> loanRequest(
      Map<String, dynamic> payload);
}
