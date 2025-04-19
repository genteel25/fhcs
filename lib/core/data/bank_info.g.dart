// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankInfoDataImpl _$$BankInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$BankInfoDataImpl(
      bankId: (json['bankId'] as num?)?.toInt(),
      accountName: json['accountName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      sortCode: json['sortCode'] as String?,
    );

Map<String, dynamic> _$$BankInfoDataImplToJson(_$BankInfoDataImpl instance) =>
    <String, dynamic>{
      'bankId': instance.bankId,
      'accountName': instance.accountName,
      'accountNumber': instance.accountNumber,
      'sortCode': instance.sortCode,
    };
