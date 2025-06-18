import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/account_info.dart';
import 'package:fhcs/features/accounts/repository/contracts/iaccount_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_details_state.dart';
part 'account_details_cubit.freezed.dart';

class AccountDetailsCubit extends Cubit<AccountDetailsState> {
  IAccountRepository repository;
  AccountDetailsCubit({required this.repository})
      : super(AccountDetailsState.initial());

  Future<void> fetchAccountDetail() async {
    emit(AccountDetailsState.loading());
    final response = await repository.accountDetails();
    response.fold((l) {
      emit(AccountDetailsState.failure(error: l.failureMessage()));
    }, (r) {
      emit(AccountDetailsState.success(response: r.data as AccountInfoData));
    });
  }
}
