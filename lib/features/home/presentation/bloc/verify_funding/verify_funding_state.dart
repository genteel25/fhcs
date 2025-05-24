part of 'verify_funding_cubit.dart';

@freezed
class VerifyFundingState with _$VerifyFundingState {
  const factory VerifyFundingState.initial() = _Initial;
  const factory VerifyFundingState.loading() = _Loading;
  const factory VerifyFundingState.success(
      {required PaymentInfoData response}) = _Success;
  const factory VerifyFundingState.failure({required String error}) = _Failure;
}
