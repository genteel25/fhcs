part of 'referees_cubit.dart';

@freezed
class RefereesState with _$RefereesState {
  const factory RefereesState.initial() = _Initial;
  const factory RefereesState.loading() = _Loading;
  const factory RefereesState.success({required List<RefereeData> response}) =
      _Success;
  const factory RefereesState.failure({required String error}) = _Failure;
}
