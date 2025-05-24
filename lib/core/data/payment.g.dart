// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoDataImpl _$$PaymentInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInfoDataImpl(
      refId: json['ref_id'] as String?,
      amountPaid: json['amount_paid'] as num?,
      paymentType: json['payment_type'] as String?,
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      email: json['email'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$PaymentInfoDataImplToJson(
        _$PaymentInfoDataImpl instance) =>
    <String, dynamic>{
      'ref_id': instance.refId,
      'amount_paid': instance.amountPaid,
      'payment_type': instance.paymentType,
      'amount': instance.amount,
      'currency': instance.currency,
      'email': instance.email,
      'description': instance.description,
      'status': instance.status,
    };
