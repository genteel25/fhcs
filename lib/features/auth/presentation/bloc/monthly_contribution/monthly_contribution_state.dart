part of 'monthly_contribution_cubit.dart';

@freezed
class MonthlyContributionState with _$MonthlyContributionState {
  const factory MonthlyContributionState.initial() = _Initial;
  const factory MonthlyContributionState.loading() = _Loading;
  const factory MonthlyContributionState.success({required String response}) =
      _Success;
  const factory MonthlyContributionState.failure({required String error}) =
      _Failure;
}
