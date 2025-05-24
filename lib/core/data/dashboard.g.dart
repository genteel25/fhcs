// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      totalSavings: (json['total_savings'] as num?)?.toDouble(),
      totalInvestment: (json['total_investment'] as num?)?.toDouble(),
      loanBalance: (json['loan_balance'] as num?)?.toDouble(),
      investmentFinancingBalance:
          (json['investment_financing_balance'] as num?)?.toDouble(),
      monthlyContribution: (json['monthly_contribution'] as num?)?.toDouble(),
      investmentPercentage: (json['investment_percentage'] as num?)?.toDouble(),
      savingsPercentage: (json['savings_percentage'] as num?)?.toDouble(),
      totalLoanTaken: (json['total_loan_taken'] as num?)?.toDouble(),
      totalLoanRepaid: (json['total_loan_repaid'] as num?)?.toDouble(),
      loanStartDate: json['loan_start_date'] == null
          ? null
          : DateTime.parse(json['loan_start_date'] as String),
      loanEndDate: json['loan_end_date'] == null
          ? null
          : DateTime.parse(json['loan_end_date'] as String),
      totalInvestmentTaken:
          (json['total_investment_taken'] as num?)?.toDouble(),
      totalInvestmentRePaid:
          (json['total_investment_repaid'] as num?)?.toDouble(),
      investmentStartDate: json['investment_start_date'] == null
          ? null
          : DateTime.parse(json['investment_start_date'] as String),
      investmentEndDate: json['investment_end_date'] == null
          ? null
          : DateTime.parse(json['investment_end_date'] as String),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'total_savings': instance.totalSavings,
      'total_investment': instance.totalInvestment,
      'loan_balance': instance.loanBalance,
      'investment_financing_balance': instance.investmentFinancingBalance,
      'monthly_contribution': instance.monthlyContribution,
      'investment_percentage': instance.investmentPercentage,
      'savings_percentage': instance.savingsPercentage,
      'total_loan_taken': instance.totalLoanTaken,
      'total_loan_repaid': instance.totalLoanRepaid,
      'loan_start_date': instance.loanStartDate?.toIso8601String(),
      'loan_end_date': instance.loanEndDate?.toIso8601String(),
      'total_investment_taken': instance.totalInvestmentTaken,
      'total_investment_repaid': instance.totalInvestmentRePaid,
      'investment_start_date': instance.investmentStartDate?.toIso8601String(),
      'investment_end_date': instance.investmentEndDate?.toIso8601String(),
    };
