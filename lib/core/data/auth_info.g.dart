// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthInfoDataImpl _$$AuthInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoDataImpl(
      basicInfo: json['basic_info'] == null
          ? null
          : BasicInfoData.fromJson(json['basic_info'] as Map<String, dynamic>),
      personalInfo: json['personal_info'] == null
          ? null
          : PersonalInfoData.fromJson(
              json['personal_info'] as Map<String, dynamic>),
      nokInfo: json['nok_info'] == null
          ? null
          : NokInfoData.fromJson(json['nok_info'] as Map<String, dynamic>),
      bankInfo: json['bank_info'] == null
          ? null
          : BankInfoData.fromJson(json['bank_info'] as Map<String, dynamic>),
      paymentInfo: json['payment_info'] == null
          ? null
          : PaymentInfoData.fromJson(
              json['payment_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthInfoDataImplToJson(_$AuthInfoDataImpl instance) =>
    <String, dynamic>{
      'basic_info': instance.basicInfo,
      'personal_info': instance.personalInfo,
      'nok_info': instance.nokInfo,
      'bank_info': instance.bankInfo,
      'payment_info': instance.paymentInfo,
    };
