// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefereeDataImpl _$$RefereeDataImplFromJson(Map<String, dynamic> json) =>
    _$RefereeDataImpl(
      id: (json['id'] as num?)?.toInt(),
      irNumber: json['ir_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$RefereeDataImplToJson(_$RefereeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ir_number': instance.irNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };
