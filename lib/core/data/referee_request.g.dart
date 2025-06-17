// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referee_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefereeRequestDataImpl _$$RefereeRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RefereeRequestDataImpl(
      id: (json['id'] as num?)?.toInt(),
      referee: json['referee'] == null
          ? null
          : RefereeData.fromJson(json['referee'] as Map<String, dynamic>),
      investment: json['investment'] == null
          ? null
          : Investment.fromJson(json['investment'] as Map<String, dynamic>),
      status: json['status'] as String?,
      loan: json['loan'] == null
          ? null
          : Loan.fromJson(json['loan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefereeRequestDataImplToJson(
        _$RefereeRequestDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'investment': instance.investment,
      'status': instance.status,
      'loan': instance.loan,
    };

_$InvestmentImpl _$$InvestmentImplFromJson(Map<String, dynamic> json) =>
    _$InvestmentImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InvestmentImplToJson(_$InvestmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$LoanImpl _$$LoanImplFromJson(Map<String, dynamic> json) => _$LoanImpl(
      id: (json['id'] as num?)?.toInt(),
      lid: json['lid'] as String?,
      loanType: json['loan_type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      status: json['status'] as String?,
      user: json['user'] == null
          ? null
          : LoanUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanImplToJson(_$LoanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lid': instance.lid,
      'loan_type': instance.loanType,
      'amount': instance.amount,
      'duration': instance.duration,
      'status': instance.status,
      'user': instance.user,
    };

_$LoanUserImpl _$$LoanUserImplFromJson(Map<String, dynamic> json) =>
    _$LoanUserImpl(
      id: (json['id'] as num?)?.toInt(),
      irNumber: json['ir_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$LoanUserImplToJson(_$LoanUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ir_number': instance.irNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };
