// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountInfoDataImpl _$$AccountInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountInfoDataImpl(
      savingsBalance: (json['savings_balance'] as num?)?.toDouble(),
      investmentBalance: (json['investment_balance'] as num?)?.toDouble(),
      pendingDebit: (json['pending_debit'] as num?)?.toDouble(),
      monthlyContribution: (json['monthly_contribution'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AccountInfoDataImplToJson(
        _$AccountInfoDataImpl instance) =>
    <String, dynamic>{
      'savings_balance': instance.savingsBalance,
      'investment_balance': instance.investmentBalance,
      'pending_debit': instance.pendingDebit,
      'monthly_contribution': instance.monthlyContribution,
    };
