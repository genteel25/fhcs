part of 'request_status_cubit.dart';

@freezed
class RequestStatusState with _$RequestStatusState {
  const factory RequestStatusState.initial() = _Initial;
  const factory RequestStatusState.loading() = _Loading;
  const factory RequestStatusState.success({required String response}) =
      _Success;
  const factory RequestStatusState.failure({required String error}) = _Failure;
}
