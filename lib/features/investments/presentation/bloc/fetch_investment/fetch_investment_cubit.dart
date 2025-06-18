import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';

part 'fetch_investment_state.dart';
part 'fetch_investment_cubit.freezed.dart';

class FetchInvestmentCubit extends Cubit<FetchInvestmentState> {
  final IInvestmentRepository repository;
  FetchInvestmentCubit({required this.repository})
      : super(FetchInvestmentState.initial());

  List<InvestmentData> applicationData = [];
  List<InvestmentData> activeData = [];
  List<InvestmentData> generalData = [];

  Future<void> fetchInvestments() async {
    try {
      emit(FetchInvestmentState.loading());
      final response = await repository.fetchInvestments();
      response.fold(
        (l) => emit(FetchInvestmentState.failure(error: l.failureMessage())),
        (r) {
          final data = r.data as List<InvestmentData>;
          final applicationInv =
              data.where((item) => item.status == "Referee").toList();
          final activeInv =
              data.where((item) => item.status == "Active").toList();
          emit(FetchInvestmentState.success(
              response: r.data as List<InvestmentData>,
              active: activeInv,
              application: applicationInv));
        },
      );
    } catch (e) {
      emit(FetchInvestmentState.failure(error: e.toString()));
    }
  }
}
