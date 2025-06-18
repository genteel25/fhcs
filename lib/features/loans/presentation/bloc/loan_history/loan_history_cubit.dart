import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_history_state.dart';
part 'loan_history_cubit.freezed.dart';

class LoanHistoryCubit extends Cubit<LoanHistoryState> {
  final ILoanRepository loanRepository;
  LoanHistoryCubit({required this.loanRepository})
      : super(LoanHistoryState.initial());
  Future<void> fetchLoanHistory() async {
    emit(LoanHistoryState.loading());
    final response = await loanRepository.loanHistory();
    response.fold(
        (l) => emit(LoanHistoryState.failure(error: l.failureMessage())),
        (r) =>
            emit(LoanHistoryState.success(response: r.data as List<LoanData>)));
  }
}

class LoanApplicationsCubit extends Cubit<LoanApplicationsState> {
  final ILoanRepository loanRepository;
  LoanApplicationsCubit({required this.loanRepository})
      : super(LoanApplicationsState.initial());
  Future<void> fetchLoanApplications() async {
    emit(LoanApplicationsState.loading());
    final response = await loanRepository.loanApplications();
    response.fold(
        (l) => emit(LoanApplicationsState.failure(error: l.failureMessage())),
        (r) => emit(
            LoanApplicationsState.success(response: r.data as List<LoanData>)));
  }
}

class ActiveLoansCubit extends Cubit<ActiveLoansState> {
  final ILoanRepository loanRepository;
  ActiveLoansCubit({required this.loanRepository})
      : super(ActiveLoansState.initial());
  Future<void> fetchActiveLoans() async {
    emit(ActiveLoansState.loading());
    final response = await loanRepository.activeLoans();
    response.fold(
        (l) => emit(ActiveLoansState.failure(error: l.failureMessage())),
        (r) =>
            emit(ActiveLoansState.success(response: r.data as List<LoanData>)));
  }
}
