part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.success({required UserInfoData response}) =
      _Success;
  const factory UserProfileState.failure({required String error}) = _Failure;
}
