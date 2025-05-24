// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentInfoData _$PaymentInfoDataFromJson(Map<String, dynamic> json) {
  return _PaymentInfoData.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfoData {
  @JsonKey(name: "ref_id")
  String? get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_paid")
  num? get amountPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  String? get paymentType => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this PaymentInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoDataCopyWith<PaymentInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoDataCopyWith<$Res> {
  factory $PaymentInfoDataCopyWith(
          PaymentInfoData value, $Res Function(PaymentInfoData) then) =
      _$PaymentInfoDataCopyWithImpl<$Res, PaymentInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: "ref_id") String? refId,
      @JsonKey(name: "amount_paid") num? amountPaid,
      @JsonKey(name: "payment_type") String? paymentType,
      num? amount,
      String? currency,
      String? email,
      String? description,
      String? status});
}

/// @nodoc
class _$PaymentInfoDataCopyWithImpl<$Res, $Val extends PaymentInfoData>
    implements $PaymentInfoDataCopyWith<$Res> {
  _$PaymentInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
    Object? amountPaid = freezed,
    Object? paymentType = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? email = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentInfoDataImplCopyWith<$Res>
    implements $PaymentInfoDataCopyWith<$Res> {
  factory _$$PaymentInfoDataImplCopyWith(_$PaymentInfoDataImpl value,
          $Res Function(_$PaymentInfoDataImpl) then) =
      __$$PaymentInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ref_id") String? refId,
      @JsonKey(name: "amount_paid") num? amountPaid,
      @JsonKey(name: "payment_type") String? paymentType,
      num? amount,
      String? currency,
      String? email,
      String? description,
      String? status});
}

/// @nodoc
class __$$PaymentInfoDataImplCopyWithImpl<$Res>
    extends _$PaymentInfoDataCopyWithImpl<$Res, _$PaymentInfoDataImpl>
    implements _$$PaymentInfoDataImplCopyWith<$Res> {
  __$$PaymentInfoDataImplCopyWithImpl(
      _$PaymentInfoDataImpl _value, $Res Function(_$PaymentInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
    Object? amountPaid = freezed,
    Object? paymentType = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? email = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PaymentInfoDataImpl(
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInfoDataImpl extends _PaymentInfoData {
  const _$PaymentInfoDataImpl(
      {@JsonKey(name: "ref_id") this.refId,
      @JsonKey(name: "amount_paid") this.amountPaid,
      @JsonKey(name: "payment_type") this.paymentType,
      this.amount,
      this.currency,
      this.email,
      this.description,
      this.status})
      : super._();

  factory _$PaymentInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoDataImplFromJson(json);

  @override
  @JsonKey(name: "ref_id")
  final String? refId;
  @override
  @JsonKey(name: "amount_paid")
  final num? amountPaid;
  @override
  @JsonKey(name: "payment_type")
  final String? paymentType;
  @override
  final num? amount;
  @override
  final String? currency;
  @override
  final String? email;
  @override
  final String? description;
  @override
  final String? status;

  @override
  String toString() {
    return 'PaymentInfoData(refId: $refId, amountPaid: $amountPaid, paymentType: $paymentType, amount: $amount, currency: $currency, email: $email, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoDataImpl &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refId, amountPaid, paymentType,
      amount, currency, email, description, status);

  /// Create a copy of PaymentInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoDataImplCopyWith<_$PaymentInfoDataImpl> get copyWith =>
      __$$PaymentInfoDataImplCopyWithImpl<_$PaymentInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInfoDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentInfoData extends PaymentInfoData {
  const factory _PaymentInfoData(
      {@JsonKey(name: "ref_id") final String? refId,
      @JsonKey(name: "amount_paid") final num? amountPaid,
      @JsonKey(name: "payment_type") final String? paymentType,
      final num? amount,
      final String? currency,
      final String? email,
      final String? description,
      final String? status}) = _$PaymentInfoDataImpl;
  const _PaymentInfoData._() : super._();

  factory _PaymentInfoData.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoDataImpl.fromJson;

  @override
  @JsonKey(name: "ref_id")
  String? get refId;
  @override
  @JsonKey(name: "amount_paid")
  num? get amountPaid;
  @override
  @JsonKey(name: "payment_type")
  String? get paymentType;
  @override
  num? get amount;
  @override
  String? get currency;
  @override
  String? get email;
  @override
  String? get description;
  @override
  String? get status;

  /// Create a copy of PaymentInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoDataImplCopyWith<_$PaymentInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
