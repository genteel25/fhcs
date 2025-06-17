import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/account_info.dart';

abstract class IAccountRepository {
  Future<Either<Failure, ApiResponse<AccountInfoData>>> accountDetails();
}
