import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/investment.dart'
    show $InvestmentDataCopyWith, InvestmentData;
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_investment_state.dart';
part 'create_investment_cubit.freezed.dart';

class CreateInvestmentCubit extends Cubit<CreateInvestmentState> {
  final IInvestmentRepository repository;
  CreateInvestmentCubit({required this.repository})
      : super(CreateInvestmentState.initial());

  Future<void> createInvestment(Map<String, dynamic> payload) async {
    emit(CreateInvestmentState.loading());
    try {
      final response = await repository.createInvestment(payload: payload);
      response.fold(
          (l) => emit(CreateInvestmentState.failure(error: l.failureMessage())),
          (r) {
        emit(CreateInvestmentState.success(response: r.data as InvestmentData));
      });
    } catch (e) {
      emit(CreateInvestmentState.failure(error: e.toString()));
    }
  }
}
