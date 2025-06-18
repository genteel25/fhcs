part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.success({required DashboardData response}) =
      _Success;
  const factory DashboardState.failure({required String error}) = _Failure;
}
