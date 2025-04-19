// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalInfoDataImpl _$$PersonalInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalInfoDataImpl(
      maritalStatus: json['maritalStatus'] as String?,
      dob: json['dob'] as String?,
      residentialAddress: json['residentialAddress'] as String?,
      permanentAddress: json['permanentAddress'] as String?,
      officeAddress: json['officeAddress'] as String?,
      deployment: json['deployment'] as String?,
      soo: json['soo'] as String?,
      salaryGrade: (json['salaryGrade'] as num?)?.toInt(),
      salaryGradeStep: (json['salaryGradeStep'] as num?)?.toInt(),
      employmentDate: (json['employmentDate'] as num?)?.toInt(),
      employmentStatus: (json['employmentStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PersonalInfoDataImplToJson(
        _$PersonalInfoDataImpl instance) =>
    <String, dynamic>{
      'maritalStatus': instance.maritalStatus,
      'dob': instance.dob,
      'residentialAddress': instance.residentialAddress,
      'permanentAddress': instance.permanentAddress,
      'officeAddress': instance.officeAddress,
      'deployment': instance.deployment,
      'soo': instance.soo,
      'salaryGrade': instance.salaryGrade,
      'salaryGradeStep': instance.salaryGradeStep,
      'employmentDate': instance.employmentDate,
      'employmentStatus': instance.employmentStatus,
    };
