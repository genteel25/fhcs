part of 'create_investment_cubit.dart';

@freezed
class CreateInvestmentState with _$CreateInvestmentState {
  const factory CreateInvestmentState.initial() = _Initial;
  const factory CreateInvestmentState.loading() = _Loading;
  const factory CreateInvestmentState.success(
      {required InvestmentData response}) = _Success;
  const factory CreateInvestmentState.failure({required String error}) =
      _Failure;
}
