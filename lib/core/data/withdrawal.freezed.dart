// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalData _$WithdrawalDataFromJson(Map<String, dynamic> json) {
  return _WithdrawalData.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalData {
  int? get id => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_details")
  BankDetails? get bankDetails => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get member => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WithdrawalData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawalDataCopyWith<WithdrawalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalDataCopyWith<$Res> {
  factory $WithdrawalDataCopyWith(
          WithdrawalData value, $Res Function(WithdrawalData) then) =
      _$WithdrawalDataCopyWithImpl<$Res, WithdrawalData>;
  @useResult
  $Res call(
      {int? id,
      double? amount,
      String? source,
      @JsonKey(name: "bank_details") BankDetails? bankDetails,
      String? status,
      String? member,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  $BankDetailsCopyWith<$Res>? get bankDetails;
}

/// @nodoc
class _$WithdrawalDataCopyWithImpl<$Res, $Val extends WithdrawalData>
    implements $WithdrawalDataCopyWith<$Res> {
  _$WithdrawalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? source = freezed,
    Object? bankDetails = freezed,
    Object? status = freezed,
    Object? member = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as BankDetails?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankDetailsCopyWith<$Res>? get bankDetails {
    if (_value.bankDetails == null) {
      return null;
    }

    return $BankDetailsCopyWith<$Res>(_value.bankDetails!, (value) {
      return _then(_value.copyWith(bankDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalDataImplCopyWith<$Res>
    implements $WithdrawalDataCopyWith<$Res> {
  factory _$$WithdrawalDataImplCopyWith(_$WithdrawalDataImpl value,
          $Res Function(_$WithdrawalDataImpl) then) =
      __$$WithdrawalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? amount,
      String? source,
      @JsonKey(name: "bank_details") BankDetails? bankDetails,
      String? status,
      String? member,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  @override
  $BankDetailsCopyWith<$Res>? get bankDetails;
}

/// @nodoc
class __$$WithdrawalDataImplCopyWithImpl<$Res>
    extends _$WithdrawalDataCopyWithImpl<$Res, _$WithdrawalDataImpl>
    implements _$$WithdrawalDataImplCopyWith<$Res> {
  __$$WithdrawalDataImplCopyWithImpl(
      _$WithdrawalDataImpl _value, $Res Function(_$WithdrawalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? source = freezed,
    Object? bankDetails = freezed,
    Object? status = freezed,
    Object? member = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WithdrawalDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as BankDetails?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalDataImpl extends _WithdrawalData
    with DiagnosticableTreeMixin {
  const _$WithdrawalDataImpl(
      {this.id,
      this.amount,
      this.source,
      @JsonKey(name: "bank_details") this.bankDetails,
      this.status,
      this.member,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$WithdrawalDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalDataImplFromJson(json);

  @override
  final int? id;
  @override
  final double? amount;
  @override
  final String? source;
  @override
  @JsonKey(name: "bank_details")
  final BankDetails? bankDetails;
  @override
  final String? status;
  @override
  final String? member;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WithdrawalData(id: $id, amount: $amount, source: $source, bankDetails: $bankDetails, status: $status, member: $member, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WithdrawalData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('source', source))
      ..add(DiagnosticsProperty('bankDetails', bankDetails))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('member', member))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.bankDetails, bankDetails) ||
                other.bankDetails == bankDetails) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, source, bankDetails,
      status, member, createdAt, updatedAt);

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalDataImplCopyWith<_$WithdrawalDataImpl> get copyWith =>
      __$$WithdrawalDataImplCopyWithImpl<_$WithdrawalDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalDataImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalData extends WithdrawalData {
  const factory _WithdrawalData(
          {final int? id,
          final double? amount,
          final String? source,
          @JsonKey(name: "bank_details") final BankDetails? bankDetails,
          final String? status,
          final String? member,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$WithdrawalDataImpl;
  const _WithdrawalData._() : super._();

  factory _WithdrawalData.fromJson(Map<String, dynamic> json) =
      _$WithdrawalDataImpl.fromJson;

  @override
  int? get id;
  @override
  double? get amount;
  @override
  String? get source;
  @override
  @JsonKey(name: "bank_details")
  BankDetails? get bankDetails;
  @override
  String? get status;
  @override
  String? get member;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of WithdrawalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawalDataImplCopyWith<_$WithdrawalDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankDetails _$BankDetailsFromJson(Map<String, dynamic> json) {
  return _BankDetails.fromJson(json);
}

/// @nodoc
mixin _$BankDetails {
  String? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_code")
  String? get sortCode => throw _privateConstructorUsedError;

  /// Serializes this BankDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankDetailsCopyWith<BankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsCopyWith<$Res> {
  factory $BankDetailsCopyWith(
          BankDetails value, $Res Function(BankDetails) then) =
      _$BankDetailsCopyWithImpl<$Res, BankDetails>;
  @useResult
  $Res call(
      {String? bank,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "sort_code") String? sortCode});
}

/// @nodoc
class _$BankDetailsCopyWithImpl<$Res, $Val extends BankDetails>
    implements $BankDetailsCopyWith<$Res> {
  _$BankDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_value.copyWith(
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$BankDetailsImplCopyWith<$Res>
    implements $BankDetailsCopyWith<$Res> {
  factory _$$BankDetailsImplCopyWith(
          _$BankDetailsImpl value, $Res Function(_$BankDetailsImpl) then) =
      __$$BankDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bank,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "sort_code") String? sortCode});
}

/// @nodoc
class __$$BankDetailsImplCopyWithImpl<$Res>
    extends _$BankDetailsCopyWithImpl<$Res, _$BankDetailsImpl>
    implements _$$BankDetailsImplCopyWith<$Res> {
  __$$BankDetailsImplCopyWithImpl(
      _$BankDetailsImpl _value, $Res Function(_$BankDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_$BankDetailsImpl(
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$BankDetailsImpl extends _BankDetails with DiagnosticableTreeMixin {
  const _$BankDetailsImpl(
      {this.bank,
      @JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "account_number") this.accountNumber,
      @JsonKey(name: "sort_code") this.sortCode})
      : super._();

  factory _$BankDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDetailsImplFromJson(json);

  @override
  final String? bank;
  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "account_number")
  final String? accountNumber;
  @override
  @JsonKey(name: "sort_code")
  final String? sortCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BankDetails(bank: $bank, accountName: $accountName, accountNumber: $accountNumber, sortCode: $sortCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BankDetails'))
      ..add(DiagnosticsProperty('bank', bank))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('sortCode', sortCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDetailsImpl &&
            (identical(other.bank, bank) || other.bank == bank) &&
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
      Object.hash(runtimeType, bank, accountName, accountNumber, sortCode);

  /// Create a copy of BankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDetailsImplCopyWith<_$BankDetailsImpl> get copyWith =>
      __$$BankDetailsImplCopyWithImpl<_$BankDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDetailsImplToJson(
      this,
    );
  }
}

abstract class _BankDetails extends BankDetails {
  const factory _BankDetails(
      {final String? bank,
      @JsonKey(name: "account_name") final String? accountName,
      @JsonKey(name: "account_number") final String? accountNumber,
      @JsonKey(name: "sort_code") final String? sortCode}) = _$BankDetailsImpl;
  const _BankDetails._() : super._();

  factory _BankDetails.fromJson(Map<String, dynamic> json) =
      _$BankDetailsImpl.fromJson;

  @override
  String? get bank;
  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "account_number")
  String? get accountNumber;
  @override
  @JsonKey(name: "sort_code")
  String? get sortCode;

  /// Create a copy of BankDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankDetailsImplCopyWith<_$BankDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
