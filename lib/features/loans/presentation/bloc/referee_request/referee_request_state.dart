part of 'referee_request_cubit.dart';

@freezed
class RefereeRequestState with _$RefereeRequestState {
  const factory RefereeRequestState.initial() = _Initial;
  const factory RefereeRequestState.loading() = _Loading;
  const factory RefereeRequestState.success(
      {required List<RefereeRequestData> response}) = _Success;
  const factory RefereeRequestState.failure({required String error}) = _Failure;
}

@freezed
class LoanRefereeRequestState with _$LoanRefereeRequestState {
  const factory LoanRefereeRequestState.initial() = _LoanInitial;
  const factory LoanRefereeRequestState.loading() = _LoanLoading;
  const factory LoanRefereeRequestState.success(
      {required List<RefereeRequestData> response}) = _LoanSuccess;
  const factory LoanRefereeRequestState.failure({required String error}) =
      _LoanFailure;
}

@freezed
class InvestmentRefereeRequestState with _$InvestmentRefereeRequestState {
  const factory InvestmentRefereeRequestState.initial() = _InvestmentInitial;
  const factory InvestmentRefereeRequestState.loading() = _InvestmentLoading;
  const factory InvestmentRefereeRequestState.success(
      {required List<RefereeRequestData> response}) = _InvestmentSuccess;
  const factory InvestmentRefereeRequestState.failure({required String error}) =
      _InvestmentFailure;
}
