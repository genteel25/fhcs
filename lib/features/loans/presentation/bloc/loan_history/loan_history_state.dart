part of 'loan_history_cubit.dart';

@freezed
class LoanHistoryState with _$LoanHistoryState {
  const factory LoanHistoryState.initial() = _Initial;
  const factory LoanHistoryState.loading() = _Loading;
  const factory LoanHistoryState.success({required List<LoanData> response}) =
      _Success;
  const factory LoanHistoryState.failure({required String error}) = _Failure;
}

@freezed
class LoanApplicationsState with _$LoanApplicationsState {
  const factory LoanApplicationsState.initial() = _ApplicationsInitial;
  const factory LoanApplicationsState.loading() = _ApplicationsLoading;
  const factory LoanApplicationsState.success(
      {required List<LoanData> response}) = _ApplicationsSuccess;
  const factory LoanApplicationsState.failure({required String error}) =
      _ApplicationsFailure;
}

@freezed
class ActiveLoansState with _$ActiveLoansState {
  const factory ActiveLoansState.initial() = _ActiveInitial;
  const factory ActiveLoansState.loading() = _ActiveLoading;
  const factory ActiveLoansState.success({required List<LoanData> response}) =
      _ActiveSuccess;
  const factory ActiveLoansState.failure({required String error}) =
      _ActiveFailure;
}
