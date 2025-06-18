// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      id: (json['id'] as num?)?.toInt(),
      tid: json['tid'] as String?,
      accountType: json['account_type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      balanceBefore: (json['balance_before'] as num?)?.toDouble(),
      balanceAfter: (json['balance_after'] as num?)?.toDouble(),
      lienBalanceBefore: (json['lien_balance_before'] as num?)?.toDouble(),
      lienBalanceAfter: (json['lien_balance_after'] as num?)?.toDouble(),
      description: json['description'] as String?,
      transactionType: json['transaction_type'] as String?,
      operationType: json['operation_type'] as String?,
      user: json['user'] == null
          ? null
          : TransactionUser.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tid': instance.tid,
      'account_type': instance.accountType,
      'amount': instance.amount,
      'balance_before': instance.balanceBefore,
      'balance_after': instance.balanceAfter,
      'lien_balance_before': instance.lienBalanceBefore,
      'lien_balance_after': instance.lienBalanceAfter,
      'description': instance.description,
      'transaction_type': instance.transactionType,
      'operation_type': instance.operationType,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TransactionUserImpl _$$TransactionUserImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionUserImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      irNumber: json['ir_number'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransactionUserImplToJson(
        _$TransactionUserImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'ir_number': instance.irNumber,
      'id': instance.id,
    };
