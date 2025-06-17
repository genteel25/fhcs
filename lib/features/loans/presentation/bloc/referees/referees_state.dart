part of 'referees_cubit.dart';

@freezed
class RefereesState with _$RefereesState {
  const RefereesState._();
  const factory RefereesState.initial() = _Initial;
  const factory RefereesState.loading() = _Loading;
  const factory RefereesState.success({required List<RefereeData> response}) =
      _Success;
  const factory RefereesState.failure({required String error}) = _Failure;

  RefereeData? getReferee(int id) {
    return whenOrNull(
      success: (response) {
        final result = response.where((item) => item.id == id).toList();
        if (result.isNotEmpty) {
          return result.first;
        }
        return null;
      },
    );
  }
}
