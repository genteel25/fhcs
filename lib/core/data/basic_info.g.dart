// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicInfoDataImpl _$$BasicInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoDataImpl(
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      irNumber: json['irNumber'] as String?,
      membershipNo: json['membershipNo'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$BasicInfoDataImplToJson(_$BasicInfoDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'imageUrl': instance.imageUrl,
      'irNumber': instance.irNumber,
      'membershipNo': instance.membershipNo,
      'phoneNumber': instance.phoneNumber,
    };
