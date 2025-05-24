part of 'initiate_funding_cubit.dart';

@freezed
class InitiateFundingState with _$InitiateFundingState {
  const factory InitiateFundingState.initial() = _Initial;
  const factory InitiateFundingState.loading() = _Loading;
  const factory InitiateFundingState.success(
      {required PaymentInfoData response}) = _Success;
  const factory InitiateFundingState.failure({required String error}) =
      _Failure;
}
