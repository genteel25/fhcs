import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/features/investments/repository/contract/iinvestment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_type_state.dart';
part 'investment_type_cubit.freezed.dart';

class InvestmentTypeCubit extends Cubit<InvestmentTypeState> {
  final IInvestmentRepository repository;
  InvestmentTypeCubit({required this.repository})
      : super(InvestmentTypeState.initial());

  Future<void> fetchInvestmentType() async {
    emit(InvestmentTypeState.loadiing());
    final response = await repository.investmentType();
    response.fold(
      (l) => emit(InvestmentTypeState.failure(error: l.failureMessage())),
      (r) {
        emit(InvestmentTypeState.success(
            response: r.data as List<InvestmentTypeData>));
      },
    );
  }
}
