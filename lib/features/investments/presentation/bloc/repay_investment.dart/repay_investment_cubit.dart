import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';

part 'repay_investment_state.dart';
part 'repay_investment_cubit.freezed.dart';

class RepayInvestmentCubit extends Cubit<RepayInvestmentState> {
  final IInvestmentRepository repository;
  RepayInvestmentCubit({required this.repository})
      : super(RepayInvestmentState.initial());

  Future<void> repayInvestment(Map<String, dynamic> payload) async {
    try {
      emit(RepayInvestmentState.loading());
      final response = await repository.initiateInvestmentRepayment(payload);
      response.fold(
        (failure) =>
            emit(RepayInvestmentState.failure(error: failure.failureMessage())),
        (success) => emit(
          RepayInvestmentState.success(
              response: success.data as InvestmentData),
        ),
      );
    } catch (e) {
      emit(RepayInvestmentState.failure(error: e.toString()));
    }
  }
}
