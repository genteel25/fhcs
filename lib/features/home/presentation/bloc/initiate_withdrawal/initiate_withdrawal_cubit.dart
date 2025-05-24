import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/withdrawal.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_withdrawal_state.dart';
part 'initiate_withdrawal_cubit.freezed.dart';

class InitiateWithdrawalCubit extends Cubit<InitiateWithdrawalState> {
  IHomeRepository homeRepository;
  InitiateWithdrawalCubit({required this.homeRepository})
      : super(InitiateWithdrawalState.initial());

  Future<void> initiateWithdrawal(Map<String, dynamic> payload) async {
    emit(InitiateWithdrawalState.loading());
    final repository = await homeRepository.initiateWithdrawal(payload);
    repository.fold(
        (l) => emit(InitiateWithdrawalState.failure(error: l.failureMessage())),
        (r) => emit(InitiateWithdrawalState.success(
            response: r.data as WithdrawalData)));
  }
}
