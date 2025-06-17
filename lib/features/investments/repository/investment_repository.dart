import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/core/data/investment_tenure.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';

class InvestmentRepository implements IInvestmentRepository {
  final IAppStorage localStorage;
  final ApiServices apiServices;

  InvestmentRepository({required this.localStorage, required this.apiServices});

  @override
  Future<Either<Failure, ApiResponse<List<InvestmentTypeData>>>>
      investmentType() => apiServices.investmentType();

  @override
  Future<Either<Failure, ApiResponse<List<InvestmentTenureData>>>>
      investmentTenure() => apiServices.investmentTenure();

  @override
  Future<Either<Failure, ApiResponse<InvestmentData>>> createInvestment(
          {required Map<String, dynamic> payload}) =>
      apiServices.createInvestment(payload: payload);
}
