// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthInfoData? response});

  $AuthInfoDataCopyWith<$Res>? get response;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$SuccessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthInfoData?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthInfoDataCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $AuthInfoDataCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({this.response});

  @override
  final AuthInfoData? response;

  @override
  String toString() {
    return 'AuthState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success({final AuthInfoData? response}) = _$SuccessImpl;

  AuthInfoData? get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyLoadingImplCopyWith<$Res> {
  factory _$$VerifyLoadingImplCopyWith(
          _$VerifyLoadingImpl value, $Res Function(_$VerifyLoadingImpl) then) =
      __$$VerifyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifyLoadingImpl>
    implements _$$VerifyLoadingImplCopyWith<$Res> {
  __$$VerifyLoadingImplCopyWithImpl(
      _$VerifyLoadingImpl _value, $Res Function(_$VerifyLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyLoadingImpl implements _VerifyLoading {
  const _$VerifyLoadingImpl();

  @override
  String toString() {
    return 'AuthState.verifyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return verifyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return verifyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifyLoading != null) {
      return verifyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return verifyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return verifyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifyLoading != null) {
      return verifyLoading(this);
    }
    return orElse();
  }
}

abstract class _VerifyLoading implements AuthState {
  const factory _VerifyLoading() = _$VerifyLoadingImpl;
}

/// @nodoc
abstract class _$$VerifySuccessImplCopyWith<$Res> {
  factory _$$VerifySuccessImplCopyWith(
          _$VerifySuccessImpl value, $Res Function(_$VerifySuccessImpl) then) =
      __$$VerifySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response});
}

/// @nodoc
class __$$VerifySuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifySuccessImpl>
    implements _$$VerifySuccessImplCopyWith<$Res> {
  __$$VerifySuccessImplCopyWithImpl(
      _$VerifySuccessImpl _value, $Res Function(_$VerifySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$VerifySuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }),
    ));
  }
}

/// @nodoc

class _$VerifySuccessImpl implements _VerifySuccess {
  const _$VerifySuccessImpl({required this.response});

  @override
  final ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) response;

  @override
  String toString() {
    return 'AuthState.verifySuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySuccessImplCopyWith<_$VerifySuccessImpl> get copyWith =>
      __$$VerifySuccessImplCopyWithImpl<_$VerifySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return verifySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return verifySuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return verifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return verifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifySuccess != null) {
      return verifySuccess(this);
    }
    return orElse();
  }
}

abstract class _VerifySuccess implements AuthState {
  const factory _VerifySuccess(
      {required final ({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response}) = _$VerifySuccessImpl;

  ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifySuccessImplCopyWith<_$VerifySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyFailureImplCopyWith<$Res> {
  factory _$$VerifyFailureImplCopyWith(
          _$VerifyFailureImpl value, $Res Function(_$VerifyFailureImpl) then) =
      __$$VerifyFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$VerifyFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifyFailureImpl>
    implements _$$VerifyFailureImplCopyWith<$Res> {
  __$$VerifyFailureImplCopyWithImpl(
      _$VerifyFailureImpl _value, $Res Function(_$VerifyFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$VerifyFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyFailureImpl implements _VerifyFailure {
  const _$VerifyFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.verifyFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyFailureImplCopyWith<_$VerifyFailureImpl> get copyWith =>
      __$$VerifyFailureImplCopyWithImpl<_$VerifyFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return verifyFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return verifyFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifyFailure != null) {
      return verifyFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return verifyFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return verifyFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (verifyFailure != null) {
      return verifyFailure(this);
    }
    return orElse();
  }
}

abstract class _VerifyFailure implements AuthState {
  const factory _VerifyFailure({required final String error}) =
      _$VerifyFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyFailureImplCopyWith<_$VerifyFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NokLoadingImplCopyWith<$Res> {
  factory _$$NokLoadingImplCopyWith(
          _$NokLoadingImpl value, $Res Function(_$NokLoadingImpl) then) =
      __$$NokLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NokLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NokLoadingImpl>
    implements _$$NokLoadingImplCopyWith<$Res> {
  __$$NokLoadingImplCopyWithImpl(
      _$NokLoadingImpl _value, $Res Function(_$NokLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NokLoadingImpl implements _NokLoading {
  const _$NokLoadingImpl();

  @override
  String toString() {
    return 'AuthState.nokLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NokLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return nokLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return nokLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokLoading != null) {
      return nokLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return nokLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return nokLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokLoading != null) {
      return nokLoading(this);
    }
    return orElse();
  }
}

abstract class _NokLoading implements AuthState {
  const factory _NokLoading() = _$NokLoadingImpl;
}

/// @nodoc
abstract class _$$NokSuccessImplCopyWith<$Res> {
  factory _$$NokSuccessImplCopyWith(
          _$NokSuccessImpl value, $Res Function(_$NokSuccessImpl) then) =
      __$$NokSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response});
}

/// @nodoc
class __$$NokSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NokSuccessImpl>
    implements _$$NokSuccessImplCopyWith<$Res> {
  __$$NokSuccessImplCopyWithImpl(
      _$NokSuccessImpl _value, $Res Function(_$NokSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$NokSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }),
    ));
  }
}

/// @nodoc

class _$NokSuccessImpl implements _NokSuccess {
  const _$NokSuccessImpl({required this.response});

  @override
  final ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) response;

  @override
  String toString() {
    return 'AuthState.nokSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NokSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NokSuccessImplCopyWith<_$NokSuccessImpl> get copyWith =>
      __$$NokSuccessImplCopyWithImpl<_$NokSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return nokSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return nokSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokSuccess != null) {
      return nokSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return nokSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return nokSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokSuccess != null) {
      return nokSuccess(this);
    }
    return orElse();
  }
}

abstract class _NokSuccess implements AuthState {
  const factory _NokSuccess(
      {required final ({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response}) = _$NokSuccessImpl;

  ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NokSuccessImplCopyWith<_$NokSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NokFailureImplCopyWith<$Res> {
  factory _$$NokFailureImplCopyWith(
          _$NokFailureImpl value, $Res Function(_$NokFailureImpl) then) =
      __$$NokFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$NokFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NokFailureImpl>
    implements _$$NokFailureImplCopyWith<$Res> {
  __$$NokFailureImplCopyWithImpl(
      _$NokFailureImpl _value, $Res Function(_$NokFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$NokFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NokFailureImpl implements _NokFailure {
  const _$NokFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.nokFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NokFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NokFailureImplCopyWith<_$NokFailureImpl> get copyWith =>
      __$$NokFailureImplCopyWithImpl<_$NokFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return nokFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return nokFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokFailure != null) {
      return nokFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return nokFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return nokFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (nokFailure != null) {
      return nokFailure(this);
    }
    return orElse();
  }
}

abstract class _NokFailure implements AuthState {
  const factory _NokFailure({required final String error}) = _$NokFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NokFailureImplCopyWith<_$NokFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankLoadingImplCopyWith<$Res> {
  factory _$$BankLoadingImplCopyWith(
          _$BankLoadingImpl value, $Res Function(_$BankLoadingImpl) then) =
      __$$BankLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BankLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$BankLoadingImpl>
    implements _$$BankLoadingImplCopyWith<$Res> {
  __$$BankLoadingImplCopyWithImpl(
      _$BankLoadingImpl _value, $Res Function(_$BankLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BankLoadingImpl implements _BankLoading {
  const _$BankLoadingImpl();

  @override
  String toString() {
    return 'AuthState.bankLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BankLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return bankLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return bankLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankLoading != null) {
      return bankLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return bankLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return bankLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankLoading != null) {
      return bankLoading(this);
    }
    return orElse();
  }
}

abstract class _BankLoading implements AuthState {
  const factory _BankLoading() = _$BankLoadingImpl;
}

/// @nodoc
abstract class _$$BankSuccessImplCopyWith<$Res> {
  factory _$$BankSuccessImplCopyWith(
          _$BankSuccessImpl value, $Res Function(_$BankSuccessImpl) then) =
      __$$BankSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response});
}

/// @nodoc
class __$$BankSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$BankSuccessImpl>
    implements _$$BankSuccessImplCopyWith<$Res> {
  __$$BankSuccessImplCopyWithImpl(
      _$BankSuccessImpl _value, $Res Function(_$BankSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$BankSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }),
    ));
  }
}

/// @nodoc

class _$BankSuccessImpl implements _BankSuccess {
  const _$BankSuccessImpl({required this.response});

  @override
  final ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) response;

  @override
  String toString() {
    return 'AuthState.bankSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankSuccessImplCopyWith<_$BankSuccessImpl> get copyWith =>
      __$$BankSuccessImplCopyWithImpl<_$BankSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return bankSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return bankSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankSuccess != null) {
      return bankSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return bankSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return bankSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankSuccess != null) {
      return bankSuccess(this);
    }
    return orElse();
  }
}

abstract class _BankSuccess implements AuthState {
  const factory _BankSuccess(
      {required final ({
        BasicInfoData basicInfo,
        NokInfoData? nokInfoData,
        PaymentInfoData? paymentInfoData,
        PersonalInfoData personalData
      }) response}) = _$BankSuccessImpl;

  ({
    BasicInfoData basicInfo,
    NokInfoData? nokInfoData,
    PaymentInfoData? paymentInfoData,
    PersonalInfoData personalData
  }) get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankSuccessImplCopyWith<_$BankSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankFailureImplCopyWith<$Res> {
  factory _$$BankFailureImplCopyWith(
          _$BankFailureImpl value, $Res Function(_$BankFailureImpl) then) =
      __$$BankFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BankFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$BankFailureImpl>
    implements _$$BankFailureImplCopyWith<$Res> {
  __$$BankFailureImplCopyWithImpl(
      _$BankFailureImpl _value, $Res Function(_$BankFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BankFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BankFailureImpl implements _BankFailure {
  const _$BankFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.bankFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankFailureImplCopyWith<_$BankFailureImpl> get copyWith =>
      __$$BankFailureImplCopyWithImpl<_$BankFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return bankFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return bankFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankFailure != null) {
      return bankFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return bankFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return bankFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (bankFailure != null) {
      return bankFailure(this);
    }
    return orElse();
  }
}

abstract class _BankFailure implements AuthState {
  const factory _BankFailure({required final String error}) = _$BankFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankFailureImplCopyWith<_$BankFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordLoadingImplCopyWith<$Res> {
  factory _$$PasswordLoadingImplCopyWith(_$PasswordLoadingImpl value,
          $Res Function(_$PasswordLoadingImpl) then) =
      __$$PasswordLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordLoadingImpl>
    implements _$$PasswordLoadingImplCopyWith<$Res> {
  __$$PasswordLoadingImplCopyWithImpl(
      _$PasswordLoadingImpl _value, $Res Function(_$PasswordLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordLoadingImpl implements _PasswordLoading {
  const _$PasswordLoadingImpl();

  @override
  String toString() {
    return 'AuthState.passwordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return passwordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return passwordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordLoading != null) {
      return passwordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return passwordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return passwordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordLoading != null) {
      return passwordLoading(this);
    }
    return orElse();
  }
}

abstract class _PasswordLoading implements AuthState {
  const factory _PasswordLoading() = _$PasswordLoadingImpl;
}

/// @nodoc
abstract class _$$PasswordSuccessImplCopyWith<$Res> {
  factory _$$PasswordSuccessImplCopyWith(_$PasswordSuccessImpl value,
          $Res Function(_$PasswordSuccessImpl) then) =
      __$$PasswordSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$PasswordSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordSuccessImpl>
    implements _$$PasswordSuccessImplCopyWith<$Res> {
  __$$PasswordSuccessImplCopyWithImpl(
      _$PasswordSuccessImpl _value, $Res Function(_$PasswordSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$PasswordSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordSuccessImpl implements _PasswordSuccess {
  const _$PasswordSuccessImpl({required this.response});

  @override
  final String response;

  @override
  String toString() {
    return 'AuthState.passwordSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordSuccessImplCopyWith<_$PasswordSuccessImpl> get copyWith =>
      __$$PasswordSuccessImplCopyWithImpl<_$PasswordSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return passwordSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return passwordSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordSuccess != null) {
      return passwordSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return passwordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return passwordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordSuccess != null) {
      return passwordSuccess(this);
    }
    return orElse();
  }
}

abstract class _PasswordSuccess implements AuthState {
  const factory _PasswordSuccess({required final String response}) =
      _$PasswordSuccessImpl;

  String get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordSuccessImplCopyWith<_$PasswordSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordFailureImplCopyWith<$Res> {
  factory _$$PasswordFailureImplCopyWith(_$PasswordFailureImpl value,
          $Res Function(_$PasswordFailureImpl) then) =
      __$$PasswordFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PasswordFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordFailureImpl>
    implements _$$PasswordFailureImplCopyWith<$Res> {
  __$$PasswordFailureImplCopyWithImpl(
      _$PasswordFailureImpl _value, $Res Function(_$PasswordFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PasswordFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordFailureImpl implements _PasswordFailure {
  const _$PasswordFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.passwordFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordFailureImplCopyWith<_$PasswordFailureImpl> get copyWith =>
      __$$PasswordFailureImplCopyWithImpl<_$PasswordFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return passwordFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return passwordFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return passwordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return passwordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (passwordFailure != null) {
      return passwordFailure(this);
    }
    return orElse();
  }
}

abstract class _PasswordFailure implements AuthState {
  const factory _PasswordFailure({required final String error}) =
      _$PasswordFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordFailureImplCopyWith<_$PasswordFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements AuthState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {({
        String accessToken,
        String fullName,
        String refreshToken,
        String username
      }) response});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoginSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }),
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl({required this.response});

  @override
  final ({
    String accessToken,
    String fullName,
    String refreshToken,
    String username
  }) response;

  @override
  String toString() {
    return 'AuthState.loginSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(
      {required final ({
        String accessToken,
        String fullName,
        String refreshToken,
        String username
      }) response}) = _$LoginSuccessImpl;

  ({String accessToken, String fullName, String refreshToken, String username})
      get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.loginFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthInfoData? response) success,
    required TResult Function(String error) failure,
    required TResult Function() verifyLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        verifySuccess,
    required TResult Function(String error) verifyFailure,
    required TResult Function() nokLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        nokSuccess,
    required TResult Function(String error) nokFailure,
    required TResult Function() bankLoading,
    required TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)
        bankSuccess,
    required TResult Function(String error) bankFailure,
    required TResult Function() passwordLoading,
    required TResult Function(String response) passwordSuccess,
    required TResult Function(String error) passwordFailure,
    required TResult Function() loginLoading,
    required TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)
        loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthInfoData? response)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? verifyLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult? Function(String error)? verifyFailure,
    TResult? Function()? nokLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult? Function(String error)? nokFailure,
    TResult? Function()? bankLoading,
    TResult? Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult? Function(String error)? bankFailure,
    TResult? Function()? passwordLoading,
    TResult? Function(String response)? passwordSuccess,
    TResult? Function(String error)? passwordFailure,
    TResult? Function()? loginLoading,
    TResult? Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthInfoData? response)? success,
    TResult Function(String error)? failure,
    TResult Function()? verifyLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        verifySuccess,
    TResult Function(String error)? verifyFailure,
    TResult Function()? nokLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        nokSuccess,
    TResult Function(String error)? nokFailure,
    TResult Function()? bankLoading,
    TResult Function(
            ({
              BasicInfoData basicInfo,
              NokInfoData? nokInfoData,
              PaymentInfoData? paymentInfoData,
              PersonalInfoData personalData
            }) response)?
        bankSuccess,
    TResult Function(String error)? bankFailure,
    TResult Function()? passwordLoading,
    TResult Function(String response)? passwordSuccess,
    TResult Function(String error)? passwordFailure,
    TResult Function()? loginLoading,
    TResult Function(
            ({
              String accessToken,
              String fullName,
              String refreshToken,
              String username
            }) response)?
        loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_VerifyLoading value) verifyLoading,
    required TResult Function(_VerifySuccess value) verifySuccess,
    required TResult Function(_VerifyFailure value) verifyFailure,
    required TResult Function(_NokLoading value) nokLoading,
    required TResult Function(_NokSuccess value) nokSuccess,
    required TResult Function(_NokFailure value) nokFailure,
    required TResult Function(_BankLoading value) bankLoading,
    required TResult Function(_BankSuccess value) bankSuccess,
    required TResult Function(_BankFailure value) bankFailure,
    required TResult Function(_PasswordLoading value) passwordLoading,
    required TResult Function(_PasswordSuccess value) passwordSuccess,
    required TResult Function(_PasswordFailure value) passwordFailure,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_VerifyLoading value)? verifyLoading,
    TResult? Function(_VerifySuccess value)? verifySuccess,
    TResult? Function(_VerifyFailure value)? verifyFailure,
    TResult? Function(_NokLoading value)? nokLoading,
    TResult? Function(_NokSuccess value)? nokSuccess,
    TResult? Function(_NokFailure value)? nokFailure,
    TResult? Function(_BankLoading value)? bankLoading,
    TResult? Function(_BankSuccess value)? bankSuccess,
    TResult? Function(_BankFailure value)? bankFailure,
    TResult? Function(_PasswordLoading value)? passwordLoading,
    TResult? Function(_PasswordSuccess value)? passwordSuccess,
    TResult? Function(_PasswordFailure value)? passwordFailure,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_VerifyLoading value)? verifyLoading,
    TResult Function(_VerifySuccess value)? verifySuccess,
    TResult Function(_VerifyFailure value)? verifyFailure,
    TResult Function(_NokLoading value)? nokLoading,
    TResult Function(_NokSuccess value)? nokSuccess,
    TResult Function(_NokFailure value)? nokFailure,
    TResult Function(_BankLoading value)? bankLoading,
    TResult Function(_BankSuccess value)? bankSuccess,
    TResult Function(_BankFailure value)? bankFailure,
    TResult Function(_PasswordLoading value)? passwordLoading,
    TResult Function(_PasswordSuccess value)? passwordSuccess,
    TResult Function(_PasswordFailure value)? passwordFailure,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthState {
  const factory _LoginFailure({required final String error}) =
      _$LoginFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
