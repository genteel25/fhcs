// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankDataImpl _$$BankDataImplFromJson(Map<String, dynamic> json) =>
    _$BankDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$BankDataImplToJson(_$BankDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };
