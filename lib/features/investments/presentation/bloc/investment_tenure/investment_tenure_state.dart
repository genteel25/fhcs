part of 'investment_tenure_cubit.dart';

@freezed
class InvestmentTenureState with _$InvestmentTenureState {
  const factory InvestmentTenureState.initial() = _Initial;
  const factory InvestmentTenureState.loading() = _Loading;
  const factory InvestmentTenureState.success(
      {required List<InvestmentTenureData> resposne}) = _Success;
  const factory InvestmentTenureState.failure({required String error}) =
      _Failure;
}
