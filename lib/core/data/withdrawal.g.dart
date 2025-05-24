// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalDataImpl _$$WithdrawalDataImplFromJson(Map<String, dynamic> json) =>
    _$WithdrawalDataImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toDouble(),
      source: json['source'] as String?,
      bankDetails: json['bank_details'] == null
          ? null
          : BankDetails.fromJson(json['bank_details'] as Map<String, dynamic>),
      status: json['status'] as String?,
      member: json['member'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$WithdrawalDataImplToJson(
        _$WithdrawalDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'source': instance.source,
      'bank_details': instance.bankDetails,
      'status': instance.status,
      'member': instance.member,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$BankDetailsImpl _$$BankDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BankDetailsImpl(
      bank: json['bank'] as String?,
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
      sortCode: json['sort_code'] as String?,
    );

Map<String, dynamic> _$$BankDetailsImplToJson(_$BankDetailsImpl instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'sort_code': instance.sortCode,
    };
