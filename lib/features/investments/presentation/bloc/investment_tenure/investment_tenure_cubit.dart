import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/investment_tenure.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_tenure_state.dart';
part 'investment_tenure_cubit.freezed.dart';

class InvestmentTenureCubit extends Cubit<InvestmentTenureState> {
  final IInvestmentRepository repository;
  InvestmentTenureCubit({required this.repository})
      : super(InvestmentTenureState.initial());

  Future<void> fetchInvestmentTenures() async {
    emit(InvestmentTenureState.loading());
    final response = await repository.investmentTenure();
    response.fold((l) {
      emit(InvestmentTenureState.failure(error: l.failureMessage()));
    }, (r) {
      emit(InvestmentTenureState.success(
          resposne: r.data as List<InvestmentTenureData>));
    });
  }
}
