part of 'loan_repayment_cubit.dart';

@freezed
class LoanRepaymentState with _$LoanRepaymentState {
  const factory LoanRepaymentState.initial() = _Initial;
  const factory LoanRepaymentState.loading() = _Loading;
  const factory LoanRepaymentState.success(
      {required LoanRepaymentData response}) = _Success;
  const factory LoanRepaymentState.failure({required String error}) = _Failure;
}
