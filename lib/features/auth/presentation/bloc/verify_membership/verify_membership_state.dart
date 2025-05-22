part of 'verify_membership_cubit.dart';

@freezed
class VerifyMembershipState with _$VerifyMembershipState {
  const factory VerifyMembershipState.initial() = _Initial;
  const factory VerifyMembershipState.loading() = _Loading;
  const factory VerifyMembershipState.success(
      {required PaymentInfoData response}) = _Success;
  const factory VerifyMembershipState.failure({required String error}) =
      _Failure;
}
