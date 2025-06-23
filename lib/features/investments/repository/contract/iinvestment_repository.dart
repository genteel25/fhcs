import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/core/data/investment_tenure.dart';
import 'package:fhcs/core/data/investment_type.dart';

abstract class IInvestmentRepository {
  Future<Either<Failure, ApiResponse<List<InvestmentTypeData>>>>
      investmentType();
  Future<Either<Failure, ApiResponse<List<InvestmentTenureData>>>>
      investmentTenure();
  Future<Either<Failure, ApiResponse<InvestmentData>>> createInvestment(
      {required Map<String, dynamic> payload});
  Future<Either<Failure, ApiResponse<List<InvestmentData>>>> fetchInvestments();
  Future<Either<Failure, ApiResponse<InvestmentData>>>
      initiateInvestmentRepayment(Map<String, dynamic> payload);
}
