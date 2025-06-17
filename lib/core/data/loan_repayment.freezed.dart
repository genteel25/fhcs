// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_repayment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanRepaymentData _$LoanRepaymentDataFromJson(Map<String, dynamic> json) {
  return _LoanRepaymentData.fromJson(json);
}

/// @nodoc
mixin _$LoanRepaymentData {
  int? get id => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;
  LoanData? get loan => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_outstanding_before")
  num? get totalOutstandingBefore => throw _privateConstructorUsedError;
  @JsonKey(name: "total_outstanding_after")
  num? get totalOutstandingAfter => throw _privateConstructorUsedError;

  /// Serializes this LoanRepaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanRepaymentDataCopyWith<LoanRepaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanRepaymentDataCopyWith<$Res> {
  factory $LoanRepaymentDataCopyWith(
          LoanRepaymentData value, $Res Function(LoanRepaymentData) then) =
      _$LoanRepaymentDataCopyWithImpl<$Res, LoanRepaymentData>;
  @useResult
  $Res call(
      {int? id,
      String? channel,
      LoanData? loan,
      num? amount,
      @JsonKey(name: "total_outstanding_before") num? totalOutstandingBefore,
      @JsonKey(name: "total_outstanding_after") num? totalOutstandingAfter});

  $LoanDataCopyWith<$Res>? get loan;
}

/// @nodoc
class _$LoanRepaymentDataCopyWithImpl<$Res, $Val extends LoanRepaymentData>
    implements $LoanRepaymentDataCopyWith<$Res> {
  _$LoanRepaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channel = freezed,
    Object? loan = freezed,
    Object? amount = freezed,
    Object? totalOutstandingBefore = freezed,
    Object? totalOutstandingAfter = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as LoanData?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOutstandingBefore: freezed == totalOutstandingBefore
          ? _value.totalOutstandingBefore
          : totalOutstandingBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOutstandingAfter: freezed == totalOutstandingAfter
          ? _value.totalOutstandingAfter
          : totalOutstandingAfter // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoanDataCopyWith<$Res>? get loan {
    if (_value.loan == null) {
      return null;
    }

    return $LoanDataCopyWith<$Res>(_value.loan!, (value) {
      return _then(_value.copyWith(loan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanRepaymentDataImplCopyWith<$Res>
    implements $LoanRepaymentDataCopyWith<$Res> {
  factory _$$LoanRepaymentDataImplCopyWith(_$LoanRepaymentDataImpl value,
          $Res Function(_$LoanRepaymentDataImpl) then) =
      __$$LoanRepaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? channel,
      LoanData? loan,
      num? amount,
      @JsonKey(name: "total_outstanding_before") num? totalOutstandingBefore,
      @JsonKey(name: "total_outstanding_after") num? totalOutstandingAfter});

  @override
  $LoanDataCopyWith<$Res>? get loan;
}

/// @nodoc
class __$$LoanRepaymentDataImplCopyWithImpl<$Res>
    extends _$LoanRepaymentDataCopyWithImpl<$Res, _$LoanRepaymentDataImpl>
    implements _$$LoanRepaymentDataImplCopyWith<$Res> {
  __$$LoanRepaymentDataImplCopyWithImpl(_$LoanRepaymentDataImpl _value,
      $Res Function(_$LoanRepaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? channel = freezed,
    Object? loan = freezed,
    Object? amount = freezed,
    Object? totalOutstandingBefore = freezed,
    Object? totalOutstandingAfter = freezed,
  }) {
    return _then(_$LoanRepaymentDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      loan: freezed == loan
          ? _value.loan
          : loan // ignore: cast_nullable_to_non_nullable
              as LoanData?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOutstandingBefore: freezed == totalOutstandingBefore
          ? _value.totalOutstandingBefore
          : totalOutstandingBefore // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOutstandingAfter: freezed == totalOutstandingAfter
          ? _value.totalOutstandingAfter
          : totalOutstandingAfter // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanRepaymentDataImpl extends _LoanRepaymentData {
  const _$LoanRepaymentDataImpl(
      {this.id,
      this.channel,
      this.loan,
      this.amount,
      @JsonKey(name: "total_outstanding_before") this.totalOutstandingBefore,
      @JsonKey(name: "total_outstanding_after") this.totalOutstandingAfter})
      : super._();

  factory _$LoanRepaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanRepaymentDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? channel;
  @override
  final LoanData? loan;
  @override
  final num? amount;
  @override
  @JsonKey(name: "total_outstanding_before")
  final num? totalOutstandingBefore;
  @override
  @JsonKey(name: "total_outstanding_after")
  final num? totalOutstandingAfter;

  @override
  String toString() {
    return 'LoanRepaymentData(id: $id, channel: $channel, loan: $loan, amount: $amount, totalOutstandingBefore: $totalOutstandingBefore, totalOutstandingAfter: $totalOutstandingAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanRepaymentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.loan, loan) || other.loan == loan) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.totalOutstandingBefore, totalOutstandingBefore) ||
                other.totalOutstandingBefore == totalOutstandingBefore) &&
            (identical(other.totalOutstandingAfter, totalOutstandingAfter) ||
                other.totalOutstandingAfter == totalOutstandingAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, channel, loan, amount,
      totalOutstandingBefore, totalOutstandingAfter);

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanRepaymentDataImplCopyWith<_$LoanRepaymentDataImpl> get copyWith =>
      __$$LoanRepaymentDataImplCopyWithImpl<_$LoanRepaymentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanRepaymentDataImplToJson(
      this,
    );
  }
}

abstract class _LoanRepaymentData extends LoanRepaymentData {
  const factory _LoanRepaymentData(
      {final int? id,
      final String? channel,
      final LoanData? loan,
      final num? amount,
      @JsonKey(name: "total_outstanding_before")
      final num? totalOutstandingBefore,
      @JsonKey(name: "total_outstanding_after")
      final num? totalOutstandingAfter}) = _$LoanRepaymentDataImpl;
  const _LoanRepaymentData._() : super._();

  factory _LoanRepaymentData.fromJson(Map<String, dynamic> json) =
      _$LoanRepaymentDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get channel;
  @override
  LoanData? get loan;
  @override
  num? get amount;
  @override
  @JsonKey(name: "total_outstanding_before")
  num? get totalOutstandingBefore;
  @override
  @JsonKey(name: "total_outstanding_after")
  num? get totalOutstandingAfter;

  /// Create a copy of LoanRepaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanRepaymentDataImplCopyWith<_$LoanRepaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
