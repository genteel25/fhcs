part of 'repay_investment_cubit.dart';

@freezed
class RepayInvestmentState with _$RepayInvestmentState {
  const factory RepayInvestmentState.initial() = _Initial;
  const factory RepayInvestmentState.loading() = _Loading;
  const factory RepayInvestmentState.success(
      {required InvestmentData response}) = _Success;
  const factory RepayInvestmentState.failure({required String error}) =
      _Failure;
}
