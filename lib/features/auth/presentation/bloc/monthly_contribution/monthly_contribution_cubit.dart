import 'package:bloc/bloc.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_contribution_state.dart';
part 'monthly_contribution_cubit.freezed.dart';

class MonthlyContributionCubit extends Cubit<MonthlyContributionState> {
  final IAuthRepository authRepository;
  MonthlyContributionCubit({required this.authRepository})
      : super(MonthlyContributionState.initial());

  Future<void> setMonthlyContribution(Map<String, dynamic> payload) async {
    emit(MonthlyContributionState.loading());
    final result = await authRepository.setMonthlyContribution(payload);
    result.fold(
      (failure) => emit(
          MonthlyContributionState.failure(error: failure.failureMessage())),
      (response) => emit(
          MonthlyContributionState.success(response: response.data as String)),
    );
  }
}
