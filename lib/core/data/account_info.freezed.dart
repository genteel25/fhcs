// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountInfoData _$AccountInfoDataFromJson(Map<String, dynamic> json) {
  return _AccountInfoData.fromJson(json);
}

/// @nodoc
mixin _$AccountInfoData {
  @JsonKey(name: "savings_balance")
  double? get savingsBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "investment_balance")
  double? get investmentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "pending_debit")
  double? get pendingDebit => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_contribution")
  double? get monthlyContribution => throw _privateConstructorUsedError;

  /// Serializes this AccountInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountInfoDataCopyWith<AccountInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoDataCopyWith<$Res> {
  factory $AccountInfoDataCopyWith(
          AccountInfoData value, $Res Function(AccountInfoData) then) =
      _$AccountInfoDataCopyWithImpl<$Res, AccountInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: "savings_balance") double? savingsBalance,
      @JsonKey(name: "investment_balance") double? investmentBalance,
      @JsonKey(name: "pending_debit") double? pendingDebit,
      @JsonKey(name: "monthly_contribution") double? monthlyContribution});
}

/// @nodoc
class _$AccountInfoDataCopyWithImpl<$Res, $Val extends AccountInfoData>
    implements $AccountInfoDataCopyWith<$Res> {
  _$AccountInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savingsBalance = freezed,
    Object? investmentBalance = freezed,
    Object? pendingDebit = freezed,
    Object? monthlyContribution = freezed,
  }) {
    return _then(_value.copyWith(
      savingsBalance: freezed == savingsBalance
          ? _value.savingsBalance
          : savingsBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentBalance: freezed == investmentBalance
          ? _value.investmentBalance
          : investmentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingDebit: freezed == pendingDebit
          ? _value.pendingDebit
          : pendingDebit // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyContribution: freezed == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountInfoDataImplCopyWith<$Res>
    implements $AccountInfoDataCopyWith<$Res> {
  factory _$$AccountInfoDataImplCopyWith(_$AccountInfoDataImpl value,
          $Res Function(_$AccountInfoDataImpl) then) =
      __$$AccountInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "savings_balance") double? savingsBalance,
      @JsonKey(name: "investment_balance") double? investmentBalance,
      @JsonKey(name: "pending_debit") double? pendingDebit,
      @JsonKey(name: "monthly_contribution") double? monthlyContribution});
}

/// @nodoc
class __$$AccountInfoDataImplCopyWithImpl<$Res>
    extends _$AccountInfoDataCopyWithImpl<$Res, _$AccountInfoDataImpl>
    implements _$$AccountInfoDataImplCopyWith<$Res> {
  __$$AccountInfoDataImplCopyWithImpl(
      _$AccountInfoDataImpl _value, $Res Function(_$AccountInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savingsBalance = freezed,
    Object? investmentBalance = freezed,
    Object? pendingDebit = freezed,
    Object? monthlyContribution = freezed,
  }) {
    return _then(_$AccountInfoDataImpl(
      savingsBalance: freezed == savingsBalance
          ? _value.savingsBalance
          : savingsBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentBalance: freezed == investmentBalance
          ? _value.investmentBalance
          : investmentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingDebit: freezed == pendingDebit
          ? _value.pendingDebit
          : pendingDebit // ignore: cast_nullable_to_non_nullable
              as double?,
      monthlyContribution: freezed == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountInfoDataImpl extends _AccountInfoData
    with DiagnosticableTreeMixin {
  const _$AccountInfoDataImpl(
      {@JsonKey(name: "savings_balance") this.savingsBalance,
      @JsonKey(name: "investment_balance") this.investmentBalance,
      @JsonKey(name: "pending_debit") this.pendingDebit,
      @JsonKey(name: "monthly_contribution") this.monthlyContribution})
      : super._();

  factory _$AccountInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountInfoDataImplFromJson(json);

  @override
  @JsonKey(name: "savings_balance")
  final double? savingsBalance;
  @override
  @JsonKey(name: "investment_balance")
  final double? investmentBalance;
  @override
  @JsonKey(name: "pending_debit")
  final double? pendingDebit;
  @override
  @JsonKey(name: "monthly_contribution")
  final double? monthlyContribution;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountInfoData(savingsBalance: $savingsBalance, investmentBalance: $investmentBalance, pendingDebit: $pendingDebit, monthlyContribution: $monthlyContribution)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountInfoData'))
      ..add(DiagnosticsProperty('savingsBalance', savingsBalance))
      ..add(DiagnosticsProperty('investmentBalance', investmentBalance))
      ..add(DiagnosticsProperty('pendingDebit', pendingDebit))
      ..add(DiagnosticsProperty('monthlyContribution', monthlyContribution));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInfoDataImpl &&
            (identical(other.savingsBalance, savingsBalance) ||
                other.savingsBalance == savingsBalance) &&
            (identical(other.investmentBalance, investmentBalance) ||
                other.investmentBalance == investmentBalance) &&
            (identical(other.pendingDebit, pendingDebit) ||
                other.pendingDebit == pendingDebit) &&
            (identical(other.monthlyContribution, monthlyContribution) ||
                other.monthlyContribution == monthlyContribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, savingsBalance,
      investmentBalance, pendingDebit, monthlyContribution);

  /// Create a copy of AccountInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoDataImplCopyWith<_$AccountInfoDataImpl> get copyWith =>
      __$$AccountInfoDataImplCopyWithImpl<_$AccountInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountInfoDataImplToJson(
      this,
    );
  }
}

abstract class _AccountInfoData extends AccountInfoData {
  const factory _AccountInfoData(
      {@JsonKey(name: "savings_balance") final double? savingsBalance,
      @JsonKey(name: "investment_balance") final double? investmentBalance,
      @JsonKey(name: "pending_debit") final double? pendingDebit,
      @JsonKey(name: "monthly_contribution")
      final double? monthlyContribution}) = _$AccountInfoDataImpl;
  const _AccountInfoData._() : super._();

  factory _AccountInfoData.fromJson(Map<String, dynamic> json) =
      _$AccountInfoDataImpl.fromJson;

  @override
  @JsonKey(name: "savings_balance")
  double? get savingsBalance;
  @override
  @JsonKey(name: "investment_balance")
  double? get investmentBalance;
  @override
  @JsonKey(name: "pending_debit")
  double? get pendingDebit;
  @override
  @JsonKey(name: "monthly_contribution")
  double? get monthlyContribution;

  /// Create a copy of AccountInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountInfoDataImplCopyWith<_$AccountInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
