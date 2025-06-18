// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentTypeDataImpl _$$InvestmentTypeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentTypeDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$InvestmentTypeDataImplToJson(
        _$InvestmentTypeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
