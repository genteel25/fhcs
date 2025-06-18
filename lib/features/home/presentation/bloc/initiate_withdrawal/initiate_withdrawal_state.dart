part of 'initiate_withdrawal_cubit.dart';

@freezed
class InitiateWithdrawalState with _$InitiateWithdrawalState {
  const factory InitiateWithdrawalState.initial() = _Initial;
  const factory InitiateWithdrawalState.loading() = _Loading;
  const factory InitiateWithdrawalState.success(
      {required WithdrawalData response}) = _Success;
  const factory InitiateWithdrawalState.failure({required String error}) =
      _Failure;
}
