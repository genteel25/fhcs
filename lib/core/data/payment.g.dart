// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoDataImpl _$$PaymentInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInfoDataImpl(
      refId: json['ref_id'] as String?,
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
      'amount': instance.amount,
      'currency': instance.currency,
      'email': instance.email,
      'description': instance.description,
      'status': instance.status,
    };
