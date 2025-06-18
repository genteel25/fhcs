part of 'fetch_investment_cubit.dart';

@freezed
class FetchInvestmentState with _$FetchInvestmentState {
  const factory FetchInvestmentState.initial() = _Initial;
  const factory FetchInvestmentState.loading() = _Loading;
  const factory FetchInvestmentState.success(
      {required List<InvestmentData> response,
      required List<InvestmentData> active,
      required List<InvestmentData> application}) = _Success;
  const factory FetchInvestmentState.failure({required String error}) =
      _Failure;
}
