import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'account_info.freezed.dart';
part 'account_info.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class AccountInfoData with _$AccountInfoData {
  const AccountInfoData._();
  const factory AccountInfoData({
    @JsonKey(name: "savings_balance") double? savingsBalance,
    @JsonKey(name: "investment_balance") double? investmentBalance,
    @JsonKey(name: "pending_debit") double? pendingDebit,
    @JsonKey(name: "monthly_contribution") double? monthlyContribution,
  }) = _AccountInfoData;

  factory AccountInfoData.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoDataFromJson(json);
}
