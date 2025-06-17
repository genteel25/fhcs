import 'package:dartz/dartz.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/data/account_info.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';
import 'package:fhcs/features/accounts/repository/contracts/iaccount_repository.dart';

class AccountRepository implements IAccountRepository {
  final IAppStorage localStorage;
  final ApiServices apiServices;

  AccountRepository({required this.localStorage, required this.apiServices});

  @override
  Future<Either<Failure, ApiResponse<AccountInfoData>>> accountDetails() =>
      apiServices.accountDetails();
}
