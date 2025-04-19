// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankInfoData _$BankInfoDataFromJson(Map<String, dynamic> json) {
  return _BankInfoData.fromJson(json);
}

/// @nodoc
mixin _$BankInfoData {
  int? get bankId => throw _privateConstructorUsedError;
  String? get accountName => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get sortCode => throw _privateConstructorUsedError;

  /// Serializes this BankInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankInfoDataCopyWith<BankInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankInfoDataCopyWith<$Res> {
  factory $BankInfoDataCopyWith(
          BankInfoData value, $Res Function(BankInfoData) then) =
      _$BankInfoDataCopyWithImpl<$Res, BankInfoData>;
  @useResult
  $Res call(
      {int? bankId,
      String? accountName,
      String? accountNumber,
      String? sortCode});
}

/// @nodoc
class _$BankInfoDataCopyWithImpl<$Res, $Val extends BankInfoData>
    implements $BankInfoDataCopyWith<$Res> {
  _$BankInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_value.copyWith(
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: freezed == sortCode
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankInfoDataImplCopyWith<$Res>
    implements $BankInfoDataCopyWith<$Res> {
  factory _$$BankInfoDataImplCopyWith(
          _$BankInfoDataImpl value, $Res Function(_$BankInfoDataImpl) then) =
      __$$BankInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? bankId,
      String? accountName,
      String? accountNumber,
      String? sortCode});
}

/// @nodoc
class __$$BankInfoDataImplCopyWithImpl<$Res>
    extends _$BankInfoDataCopyWithImpl<$Res, _$BankInfoDataImpl>
    implements _$$BankInfoDataImplCopyWith<$Res> {
  __$$BankInfoDataImplCopyWithImpl(
      _$BankInfoDataImpl _value, $Res Function(_$BankInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_$BankInfoDataImpl(
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: freezed == sortCode
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankInfoDataImpl extends _BankInfoData {
  const _$BankInfoDataImpl(
      {this.bankId, this.accountName, this.accountNumber, this.sortCode})
      : super._();

  factory _$BankInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankInfoDataImplFromJson(json);

  @override
  final int? bankId;
  @override
  final String? accountName;
  @override
  final String? accountNumber;
  @override
  final String? sortCode;

  @override
  String toString() {
    return 'BankInfoData(bankId: $bankId, accountName: $accountName, accountNumber: $accountNumber, sortCode: $sortCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankInfoDataImpl &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.sortCode, sortCode) ||
                other.sortCode == sortCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bankId, accountName, accountNumber, sortCode);

  /// Create a copy of BankInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankInfoDataImplCopyWith<_$BankInfoDataImpl> get copyWith =>
      __$$BankInfoDataImplCopyWithImpl<_$BankInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankInfoDataImplToJson(
      this,
    );
  }
}

abstract class _BankInfoData extends BankInfoData {
  const factory _BankInfoData(
      {final int? bankId,
      final String? accountName,
      final String? accountNumber,
      final String? sortCode}) = _$BankInfoDataImpl;
  const _BankInfoData._() : super._();

  factory _BankInfoData.fromJson(Map<String, dynamic> json) =
      _$BankInfoDataImpl.fromJson;

  @override
  int? get bankId;
  @override
  String? get accountName;
  @override
  String? get accountNumber;
  @override
  String? get sortCode;

  /// Create a copy of BankInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankInfoDataImplCopyWith<_$BankInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
