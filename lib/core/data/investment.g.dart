// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentDataImpl _$$InvestmentDataImplFromJson(Map<String, dynamic> json) =>
    _$InvestmentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      iid: json['iid'] as String?,
      investmentType: json['investment_type'] == null
          ? null
          : InvestmentType.fromJson(
              json['investment_type'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble(),
      investmentAmount: (json['investment_amount'] as num?)?.toDouble(),
      amountRepaid: (json['amount_repaid'] as num?)?.toDouble(),
      tenure: json['tenure'] == null
          ? null
          : Tenure.fromJson(json['tenure'] as Map<String, dynamic>),
      profitPercentage: (json['profit_percentage'] as num?)?.toDouble(),
      status: json['status'] as String?,
      approvalStatus: json['approval_status'] as String?,
      user: json['user'],
      referees: (json['referees'] as List<dynamic>?)
          ?.map((e) => RefereeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      changesRequested: json['changes_requested'] as Map<String, dynamic>?,
      vendorContact: json['vendor_contact'] as String?,
      vendorName: json['vendor_name'] as String?,
      witnesses: (json['witnesses'] as List<dynamic>?)
          ?.map((e) => Witness.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$InvestmentDataImplToJson(
        _$InvestmentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iid': instance.iid,
      'investment_type': instance.investmentType,
      'amount': instance.amount,
      'investment_amount': instance.investmentAmount,
      'amount_repaid': instance.amountRepaid,
      'tenure': instance.tenure,
      'profit_percentage': instance.profitPercentage,
      'status': instance.status,
      'approval_status': instance.approvalStatus,
      'user': instance.user,
      'referees': instance.referees,
      'changes_requested': instance.changesRequested,
      'vendor_contact': instance.vendorContact,
      'vendor_name': instance.vendorName,
      'witnesses': instance.witnesses,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$InvestmentTypeImpl _$$InvestmentTypeImplFromJson(Map<String, dynamic> json) =>
    _$InvestmentTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$InvestmentTypeImplToJson(
        _$InvestmentTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$TenureImpl _$$TenureImplFromJson(Map<String, dynamic> json) => _$TenureImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      profitPercentage: (json['profit_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TenureImplToJson(_$TenureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'profit_percentage': instance.profitPercentage,
    };

_$RefereeItemImpl _$$RefereeItemImplFromJson(Map<String, dynamic> json) =>
    _$RefereeItemImpl(
      id: (json['id'] as num?)?.toInt(),
      referee: json['referee'] == null
          ? null
          : RefereeUser.fromJson(json['referee'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$RefereeItemImplToJson(_$RefereeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'status': instance.status,
    };

_$RefereeUserImpl _$$RefereeUserImplFromJson(Map<String, dynamic> json) =>
    _$RefereeUserImpl(
      id: (json['id'] as num?)?.toInt(),
      irNumber: json['ir_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$RefereeUserImplToJson(_$RefereeUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ir_number': instance.irNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };

_$WitnessImpl _$$WitnessImplFromJson(Map<String, dynamic> json) =>
    _$WitnessImpl(
      id: (json['id'] as num?)?.toInt(),
      irNumber: json['ir_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$WitnessImplToJson(_$WitnessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ir_number': instance.irNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };
