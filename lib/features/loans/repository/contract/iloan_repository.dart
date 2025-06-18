import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/loan_repayment.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/data/referee_request.dart';

abstract class ILoanRepository {
  Future<Either<Failure, ApiResponse<List<RefereeData>>>> fetchReferees();
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> loanRequest(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanHistory();
  Future<Either<Failure, ApiResponse<List<LoanData>>>> activeLoans();
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanApplications();
  Future<Either<Failure, ApiResponse<LoanRepaymentData>>> initiateLoanRepayment(
      Map<String, dynamic> payload);
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      loanRefereeRequest();
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      investmentRefereeRequest();
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      refereeRequest();
}
