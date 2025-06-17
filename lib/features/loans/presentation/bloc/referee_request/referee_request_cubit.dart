import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/referee_request.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referee_request_state.dart';
part 'referee_request_cubit.freezed.dart';

class RefereeRequestCubit extends Cubit<RefereeRequestState> {
  ILoanRepository repository;
  RefereeRequestCubit({required this.repository})
      : super(RefereeRequestState.initial());

  Future<void> fetchRefereeRequest() async {
    emit(RefereeRequestState.loading());
    final response = await repository.refereeRequest();
    response.fold((l) {
      emit(RefereeRequestState.failure(error: l.failureMessage()));
    }, (r) {
      emit(RefereeRequestState.success(
          response: r.data as List<RefereeRequestData>));
    });
  }
}

class LoanRefereeRequestCubit extends Cubit<LoanRefereeRequestState> {
  ILoanRepository repository;
  LoanRefereeRequestCubit({required this.repository})
      : super(LoanRefereeRequestState.initial());

  Future<void> fetchRefereeRequest() async {
    emit(LoanRefereeRequestState.loading());
    final response = await repository.loanRefereeRequest();
    response.fold((l) {
      emit(LoanRefereeRequestState.failure(error: l.failureMessage()));
    }, (r) {
      emit(LoanRefereeRequestState.success(
          response: r.data as List<RefereeRequestData>));
    });
  }
}

class InvestmentRefereeRequestCubit
    extends Cubit<InvestmentRefereeRequestState> {
  ILoanRepository repository;
  InvestmentRefereeRequestCubit({required this.repository})
      : super(InvestmentRefereeRequestState.initial());

  Future<void> fetchRefereeRequest() async {
    emit(InvestmentRefereeRequestState.loading());
    final response = await repository.investmentRefereeRequest();
    response.fold((l) {
      emit(InvestmentRefereeRequestState.failure(error: l.failureMessage()));
    }, (r) {
      emit(InvestmentRefereeRequestState.success(
          response: r.data as List<RefereeRequestData>));
    });
  }
}
