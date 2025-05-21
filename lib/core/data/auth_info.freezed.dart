// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthInfoData _$AuthInfoDataFromJson(Map<String, dynamic> json) {
  return _AuthInfoData.fromJson(json);
}

/// @nodoc
mixin _$AuthInfoData {
  @JsonKey(name: "basic_info")
  BasicInfoData? get basicInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "personal_info")
  PersonalInfoData? get personalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "nok_info")
  NokInfoData? get nokInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_info")
  BankInfoData? get bankInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_info")
  PaymentInfoData? get paymentInfo => throw _privateConstructorUsedError;

  /// Serializes this AuthInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthInfoDataCopyWith<AuthInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoDataCopyWith<$Res> {
  factory $AuthInfoDataCopyWith(
          AuthInfoData value, $Res Function(AuthInfoData) then) =
      _$AuthInfoDataCopyWithImpl<$Res, AuthInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: "basic_info") BasicInfoData? basicInfo,
      @JsonKey(name: "personal_info") PersonalInfoData? personalInfo,
      @JsonKey(name: "nok_info") NokInfoData? nokInfo,
      @JsonKey(name: "bank_info") BankInfoData? bankInfo,
      @JsonKey(name: "payment_info") PaymentInfoData? paymentInfo});

  $BasicInfoDataCopyWith<$Res>? get basicInfo;
  $PersonalInfoDataCopyWith<$Res>? get personalInfo;
  $NokInfoDataCopyWith<$Res>? get nokInfo;
  $BankInfoDataCopyWith<$Res>? get bankInfo;
  $PaymentInfoDataCopyWith<$Res>? get paymentInfo;
}

/// @nodoc
class _$AuthInfoDataCopyWithImpl<$Res, $Val extends AuthInfoData>
    implements $AuthInfoDataCopyWith<$Res> {
  _$AuthInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = freezed,
    Object? personalInfo = freezed,
    Object? nokInfo = freezed,
    Object? bankInfo = freezed,
    Object? paymentInfo = freezed,
  }) {
    return _then(_value.copyWith(
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoData?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfoData?,
      nokInfo: freezed == nokInfo
          ? _value.nokInfo
          : nokInfo // ignore: cast_nullable_to_non_nullable
              as NokInfoData?,
      bankInfo: freezed == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfoData?,
      paymentInfo: freezed == paymentInfo
          ? _value.paymentInfo
          : paymentInfo // ignore: cast_nullable_to_non_nullable
              as PaymentInfoData?,
    ) as $Val);
  }

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicInfoDataCopyWith<$Res>? get basicInfo {
    if (_value.basicInfo == null) {
      return null;
    }

    return $BasicInfoDataCopyWith<$Res>(_value.basicInfo!, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoDataCopyWith<$Res>? get personalInfo {
    if (_value.personalInfo == null) {
      return null;
    }

    return $PersonalInfoDataCopyWith<$Res>(_value.personalInfo!, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NokInfoDataCopyWith<$Res>? get nokInfo {
    if (_value.nokInfo == null) {
      return null;
    }

    return $NokInfoDataCopyWith<$Res>(_value.nokInfo!, (value) {
      return _then(_value.copyWith(nokInfo: value) as $Val);
    });
  }

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankInfoDataCopyWith<$Res>? get bankInfo {
    if (_value.bankInfo == null) {
      return null;
    }

    return $BankInfoDataCopyWith<$Res>(_value.bankInfo!, (value) {
      return _then(_value.copyWith(bankInfo: value) as $Val);
    });
  }

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoDataCopyWith<$Res>? get paymentInfo {
    if (_value.paymentInfo == null) {
      return null;
    }

    return $PaymentInfoDataCopyWith<$Res>(_value.paymentInfo!, (value) {
      return _then(_value.copyWith(paymentInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthInfoDataImplCopyWith<$Res>
    implements $AuthInfoDataCopyWith<$Res> {
  factory _$$AuthInfoDataImplCopyWith(
          _$AuthInfoDataImpl value, $Res Function(_$AuthInfoDataImpl) then) =
      __$$AuthInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "basic_info") BasicInfoData? basicInfo,
      @JsonKey(name: "personal_info") PersonalInfoData? personalInfo,
      @JsonKey(name: "nok_info") NokInfoData? nokInfo,
      @JsonKey(name: "bank_info") BankInfoData? bankInfo,
      @JsonKey(name: "payment_info") PaymentInfoData? paymentInfo});

  @override
  $BasicInfoDataCopyWith<$Res>? get basicInfo;
  @override
  $PersonalInfoDataCopyWith<$Res>? get personalInfo;
  @override
  $NokInfoDataCopyWith<$Res>? get nokInfo;
  @override
  $BankInfoDataCopyWith<$Res>? get bankInfo;
  @override
  $PaymentInfoDataCopyWith<$Res>? get paymentInfo;
}

/// @nodoc
class __$$AuthInfoDataImplCopyWithImpl<$Res>
    extends _$AuthInfoDataCopyWithImpl<$Res, _$AuthInfoDataImpl>
    implements _$$AuthInfoDataImplCopyWith<$Res> {
  __$$AuthInfoDataImplCopyWithImpl(
      _$AuthInfoDataImpl _value, $Res Function(_$AuthInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = freezed,
    Object? personalInfo = freezed,
    Object? nokInfo = freezed,
    Object? bankInfo = freezed,
    Object? paymentInfo = freezed,
  }) {
    return _then(_$AuthInfoDataImpl(
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoData?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfoData?,
      nokInfo: freezed == nokInfo
          ? _value.nokInfo
          : nokInfo // ignore: cast_nullable_to_non_nullable
              as NokInfoData?,
      bankInfo: freezed == bankInfo
          ? _value.bankInfo
          : bankInfo // ignore: cast_nullable_to_non_nullable
              as BankInfoData?,
      paymentInfo: freezed == paymentInfo
          ? _value.paymentInfo
          : paymentInfo // ignore: cast_nullable_to_non_nullable
              as PaymentInfoData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthInfoDataImpl extends _AuthInfoData {
  const _$AuthInfoDataImpl(
      {@JsonKey(name: "basic_info") this.basicInfo,
      @JsonKey(name: "personal_info") this.personalInfo,
      @JsonKey(name: "nok_info") this.nokInfo,
      @JsonKey(name: "bank_info") this.bankInfo,
      @JsonKey(name: "payment_info") this.paymentInfo})
      : super._();

  factory _$AuthInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoDataImplFromJson(json);

  @override
  @JsonKey(name: "basic_info")
  final BasicInfoData? basicInfo;
  @override
  @JsonKey(name: "personal_info")
  final PersonalInfoData? personalInfo;
  @override
  @JsonKey(name: "nok_info")
  final NokInfoData? nokInfo;
  @override
  @JsonKey(name: "bank_info")
  final BankInfoData? bankInfo;
  @override
  @JsonKey(name: "payment_info")
  final PaymentInfoData? paymentInfo;

  @override
  String toString() {
    return 'AuthInfoData(basicInfo: $basicInfo, personalInfo: $personalInfo, nokInfo: $nokInfo, bankInfo: $bankInfo, paymentInfo: $paymentInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInfoDataImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.nokInfo, nokInfo) || other.nokInfo == nokInfo) &&
            (identical(other.bankInfo, bankInfo) ||
                other.bankInfo == bankInfo) &&
            (identical(other.paymentInfo, paymentInfo) ||
                other.paymentInfo == paymentInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, basicInfo, personalInfo, nokInfo, bankInfo, paymentInfo);

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInfoDataImplCopyWith<_$AuthInfoDataImpl> get copyWith =>
      __$$AuthInfoDataImplCopyWithImpl<_$AuthInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInfoDataImplToJson(
      this,
    );
  }
}

abstract class _AuthInfoData extends AuthInfoData {
  const factory _AuthInfoData(
          {@JsonKey(name: "basic_info") final BasicInfoData? basicInfo,
          @JsonKey(name: "personal_info") final PersonalInfoData? personalInfo,
          @JsonKey(name: "nok_info") final NokInfoData? nokInfo,
          @JsonKey(name: "bank_info") final BankInfoData? bankInfo,
          @JsonKey(name: "payment_info") final PaymentInfoData? paymentInfo}) =
      _$AuthInfoDataImpl;
  const _AuthInfoData._() : super._();

  factory _AuthInfoData.fromJson(Map<String, dynamic> json) =
      _$AuthInfoDataImpl.fromJson;

  @override
  @JsonKey(name: "basic_info")
  BasicInfoData? get basicInfo;
  @override
  @JsonKey(name: "personal_info")
  PersonalInfoData? get personalInfo;
  @override
  @JsonKey(name: "nok_info")
  NokInfoData? get nokInfo;
  @override
  @JsonKey(name: "bank_info")
  BankInfoData? get bankInfo;
  @override
  @JsonKey(name: "payment_info")
  PaymentInfoData? get paymentInfo;

  /// Create a copy of AuthInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInfoDataImplCopyWith<_$AuthInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
