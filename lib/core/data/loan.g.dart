// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanDataImpl _$$LoanDataImplFromJson(Map<String, dynamic> json) =>
    _$LoanDataImpl(
      id: (json['id'] as num?)?.toInt(),
      lid: json['lid'] as String?,
      loanType: json['loan_type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      amountDisbursed: (json['amount_disbursed'] as num?)?.toDouble(),
      amountRePaid: (json['amount_repaid'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      status: json['status'] as String?,
      approvalStatus: json['approval_status'] as String?,
      user: json['user'] == null
          ? null
          : LoanUser.fromJson(json['user'] as Map<String, dynamic>),
      referees: (json['referees'] as List<dynamic>?)
          ?.map((e) => LoanReferee.fromJson(e as Map<String, dynamic>))
          .toList(),
      payslipUrl: json['payslip_url'] as String?,
      annualSalary: (json['annual_salary'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      canApprove: json['can_approve'] as bool?,
      description: json['description'] as String?,
      applicationFee: (json['application_fee'] as num?)?.toDouble(),
      monthlyRepayment: (json['monthly_repayment'] as num?)?.toDouble(),
      savingsBalance: (json['savings_balance'] as num?)?.toDouble(),
      loanLimit: (json['loan_limit'] as num?)?.toDouble(),
      nextApprovalStep: json['next_approval_step'] == null
          ? null
          : ApprovalStep.fromJson(
              json['next_approval_step'] as Map<String, dynamic>),
      currentApprovalStep: json['current_approval_step'] == null
          ? null
          : ApprovalStep.fromJson(
              json['current_approval_step'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanDataImplToJson(_$LoanDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lid': instance.lid,
      'loan_type': instance.loanType,
      'amount': instance.amount,
      'amount_disbursed': instance.amountDisbursed,
      'amount_repaid': instance.amountRePaid,
      'duration': instance.duration,
      'status': instance.status,
      'approval_status': instance.approvalStatus,
      'user': instance.user,
      'referees': instance.referees,
      'payslip_url': instance.payslipUrl,
      'annual_salary': instance.annualSalary,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'can_approve': instance.canApprove,
      'description': instance.description,
      'application_fee': instance.applicationFee,
      'monthly_repayment': instance.monthlyRepayment,
      'savings_balance': instance.savingsBalance,
      'loan_limit': instance.loanLimit,
      'next_approval_step': instance.nextApprovalStep,
      'current_approval_step': instance.currentApprovalStep,
    };

_$LoanRefereeImpl _$$LoanRefereeImplFromJson(Map<String, dynamic> json) =>
    _$LoanRefereeImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : LoanUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanRefereeImplToJson(_$LoanRefereeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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

_$ApprovalStepImpl _$$ApprovalStepImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalStepImpl(
      order: (json['order'] as num?)?.toInt(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => ApprovalRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      actionBy: json['action_by'] == null
          ? null
          : ApprovalActionBy.fromJson(
              json['action_by'] as Map<String, dynamic>),
      actionType: json['action_type'] as String?,
    );

Map<String, dynamic> _$$ApprovalStepImplToJson(_$ApprovalStepImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'roles': instance.roles,
      'status': instance.status,
      'action_by': instance.actionBy,
      'action_type': instance.actionType,
    };

_$ApprovalRoleImpl _$$ApprovalRoleImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalRoleImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ApprovalRoleImplToJson(_$ApprovalRoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ApprovalActionByImpl _$$ApprovalActionByImplFromJson(
        Map<String, dynamic> json) =>
    _$ApprovalActionByImpl(
      id: (json['id'] as num?)?.toInt(),
      irNumber: json['ir_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$$ApprovalActionByImplToJson(
        _$ApprovalActionByImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ir_number': instance.irNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
