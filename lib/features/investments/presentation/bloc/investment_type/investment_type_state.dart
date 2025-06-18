part of 'investment_type_cubit.dart';

@freezed
class InvestmentTypeState with _$InvestmentTypeState {
  const InvestmentTypeState._();
  const factory InvestmentTypeState.initial() = _Initial;
  const factory InvestmentTypeState.loadiing() = _Loading;
  const factory InvestmentTypeState.success(
      {required List<InvestmentTypeData> response}) = _Success;
  const factory InvestmentTypeState.failure({required String error}) = _Failure;

  InvestmentTypeData? getInvestmentType(int id) {
    return whenOrNull(
      success: (value) {
        final result = value.where((item) => item.id == id).toList();
        if (result.isNotEmpty) {
          return result.first;
        }
        return null;
      },
      // orElse: () => InvestmentTypeData(),
    );
  }
}
