import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'dashboard.freezed.dart';
part 'dashboard.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class DashboardData with _$DashboardData {
  const DashboardData._();
  const factory DashboardData({
    @JsonKey(name: "total_savings") double? totalSavings,
    @JsonKey(name: "total_investment") double? totalInvestment,
    @JsonKey(name: "loan_balance") double? loanBalance,
    @JsonKey(name: "investment_financing_balance")
    double? investmentFinancingBalance,
    @JsonKey(name: "monthly_contribution") double? monthlyContribution,
    @JsonKey(name: "investment_percentage") double? investmentPercentage,
    @JsonKey(name: "savings_percentage") double? savingsPercentage,
    @JsonKey(name: "total_loan_taken") double? totalLoanTaken,
    @JsonKey(name: "total_loan_repaid") double? totalLoanRepaid,
    @JsonKey(name: "loan_start_date")
    DateTime? loanStartDate, // Using DateTime for dates
    @JsonKey(name: "loan_end_date")
    DateTime? loanEndDate, // Using DateTime for dates
    @JsonKey(name: "total_investment_taken") double? totalInvestmentTaken,
    @JsonKey(name: "total_investment_repaid") double? totalInvestmentRePaid,
    @JsonKey(name: "investment_start_date")
    DateTime? investmentStartDate, // Using DateTime
    @JsonKey(name: "investment_end_date")
    DateTime? investmentEndDate, // Using DateTime
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}
