// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDataImpl _$$UserInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDataImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      cooperator: json['cooperator'] == null
          ? null
          : Cooperator.fromJson(json['cooperator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoDataImplToJson(_$UserInfoDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'cooperator': instance.cooperator,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      middleName: json['middle_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      irNumber: json['ir_number'] as String?,
      imageUrl: json['image_url'] as String?,
      membershipNo: json['membership_no'] as String?,
      roles: json['roles'] as List<dynamic>?,
      status: json['status'] as String?,
      deployment: json['deployment'],
      residentialAddress: json['residential_address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'ir_number': instance.irNumber,
      'image_url': instance.imageUrl,
      'membership_no': instance.membershipNo,
      'roles': instance.roles,
      'status': instance.status,
      'deployment': instance.deployment,
      'residential_address': instance.residentialAddress,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CooperatorImpl _$$CooperatorImplFromJson(Map<String, dynamic> json) =>
    _$CooperatorImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      dob: json['dob'] as String?,
      stateOfOrigin: json['state_of_origin'] as String?,
      maritalStatus: json['marital_status'] as String?,
      deployment: json['deployment'] as String?,
      salaryGrade: (json['salary_grade'] as num?)?.toInt(),
      salaryGradeStep: (json['salary_grade_step'] as num?)?.toInt(),
      employmentDate: json['employment_date'] as String?,
      inService: json['in_service'] as bool?,
      residentialAddress: json['residential_address'] as String?,
      permanentAddress: json['permanent_address'] as String?,
      officeAddress: json['office_address'] as String?,
      bank: json['bank'] == null
          ? null
          : Bank.fromJson(json['bank'] as Map<String, dynamic>),
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
      sortCode: json['sort_code'] as String?,
      investmentPercentage: (json['investment_percentage'] as num?)?.toDouble(),
      savingsPercentage: (json['savings_percentage'] as num?)?.toDouble(),
      monthlyContribution: (json['monthly_contribution'] as num?)?.toDouble(),
      primaryNok: json['primary_nok'] == null
          ? null
          : NokInfo.fromJson(json['primary_nok'] as Map<String, dynamic>),
      secondaryNok: json['secondary_nok'] == null
          ? null
          : NokInfo.fromJson(json['secondary_nok'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CooperatorImplToJson(_$CooperatorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'dob': instance.dob,
      'state_of_origin': instance.stateOfOrigin,
      'marital_status': instance.maritalStatus,
      'deployment': instance.deployment,
      'salary_grade': instance.salaryGrade,
      'salary_grade_step': instance.salaryGradeStep,
      'employment_date': instance.employmentDate,
      'in_service': instance.inService,
      'residential_address': instance.residentialAddress,
      'permanent_address': instance.permanentAddress,
      'office_address': instance.officeAddress,
      'bank': instance.bank,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'sort_code': instance.sortCode,
      'investment_percentage': instance.investmentPercentage,
      'savings_percentage': instance.savingsPercentage,
      'monthly_contribution': instance.monthlyContribution,
      'primary_nok': instance.primaryNok,
      'secondary_nok': instance.secondaryNok,
    };

_$BankImpl _$$BankImplFromJson(Map<String, dynamic> json) => _$BankImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$BankImplToJson(_$BankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

_$NokInfoImpl _$$NokInfoImplFromJson(Map<String, dynamic> json) =>
    _$NokInfoImpl(
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      relationship: json['relationship'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$NokInfoImplToJson(_$NokInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'relationship': instance.relationship,
      'address': instance.address,
    };
