part of 'account_details_cubit.dart';

@freezed
class AccountDetailsState with _$AccountDetailsState {
  const factory AccountDetailsState.initial() = _Initial;
  const factory AccountDetailsState.loading() = _Loading;
  const factory AccountDetailsState.success(
      {required AccountInfoData response}) = _Success;
  const factory AccountDetailsState.failure({required String error}) = _Failure;
}
