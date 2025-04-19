part of 'auth_cubit.dart';

@Freezed()
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success({required String response}) = _Success;
  const factory AuthState.failure({required String error}) = _Failure;
  const factory AuthState.verifyLoading() = _VerifyLoading;
  const factory AuthState.verifySuccess({required InfoData response}) =
      _VerifySuccess;
  const factory AuthState.verifyFailure({required String error}) =
      _VerifyFailure;
  const factory AuthState.nokLoading() = _NokLoading;
  const factory AuthState.nokSuccess({required InfoData response}) =
      _NokSuccess;
  const factory AuthState.nokFailure({required String error}) = _NokFailure;
  const factory AuthState.bankLoading() = _BankLoading;
  const factory AuthState.bankSuccess({required InfoData response}) =
      _BankSuccess;
  const factory AuthState.bankFailure({required String error}) = _BankFailure;
  const factory AuthState.passwordLoading() = _PasswordLoading;
  const factory AuthState.passwordSuccess({required String response}) =
      _PasswordSuccess;
  const factory AuthState.passwordFailure({required String error}) =
      _PasswordFailure;
  const factory AuthState.loginLoading() = _LoginLoading;
  const factory AuthState.loginSuccess({required LoginData response}) =
      _LoginSuccess;
  const factory AuthState.loginFailure({required String error}) = _LoginFailure;
}
