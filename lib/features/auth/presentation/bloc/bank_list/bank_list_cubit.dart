import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_list_state.dart';
part 'bank_list_cubit.freezed.dart';

class BankListCubit extends Cubit<BankListState> {
  final IAuthRepository authRepository;
  BankListCubit({required this.authRepository})
      : super(BankListState.initial());

  Future<void> getBankList() async {
    emit(BankListState.loading());
    final response = await authRepository.bankList();
    response.fold((l) => emit(BankListState.failure(error: l.failureMessage())),
        (r) {
      emit(BankListState.success(response: r.data as List<BankData>));
    });
  }
}
