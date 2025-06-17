import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/loan_repayment.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/core/data/referee_request.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';

class LoanRepository implements ILoanRepository {
  final IAppStorage localStorage;
  final ApiServices apiServices;

  LoanRepository({required this.localStorage, required this.apiServices});

  @override
  Future<Either<Failure, ApiResponse<List<RefereeData>>>> fetchReferees() =>
      apiServices.fetchReferees();

  @override
  Future<Either<Failure, ApiResponse<PaymentInfoData>>> loanRequest(
          Map<String, dynamic> payload) =>
      apiServices.loanRequest(payload);

  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanHistory() =>
      apiServices.loanHistory();
  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> activeLoans() =>
      apiServices.activeLoans();
  @override
  Future<Either<Failure, ApiResponse<List<LoanData>>>> loanApplications() =>
      apiServices.loanApplications();

  @override
  Future<Either<Failure, ApiResponse<LoanRepaymentData>>> initiateLoanRepayment(
          Map<String, dynamic> payload) =>
      apiServices.initiateLoanRepayment(payload);
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      loanRefereeRequest() => apiServices.loanRefereeRequest();
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      investmentRefereeRequest() => apiServices.investmentRefereeRequest();
  @override
  Future<Either<Failure, ApiResponse<List<RefereeRequestData>>>>
      refereeRequest() => apiServices.refereeRequest();
}
