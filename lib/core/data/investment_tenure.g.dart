// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_tenure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentTenureDataImpl _$$InvestmentTenureDataImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentTenureDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      profitPercentage: (json['profit_percentage'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$InvestmentTenureDataImplToJson(
        _$InvestmentTenureDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'profit_percentage': instance.profitPercentage,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
