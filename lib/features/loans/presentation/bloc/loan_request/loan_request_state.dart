part of 'loan_request_cubit.dart';

@freezed
class LoanRequestState with _$LoanRequestState {
  const factory LoanRequestState.initial() = _Initial;
  const factory LoanRequestState.loading() = _Loading;
  const factory LoanRequestState.success({required PaymentInfoData response}) =
      _Success;
  const factory LoanRequestState.failure({required String error}) = _Failure;
}
