import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'withdrawal.freezed.dart';
part 'withdrawal.g.dart';

// --- Withdrawal Record Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class WithdrawalData with _$WithdrawalData {
  const WithdrawalData._();
  const factory WithdrawalData({
    int? id,
    double? amount,
    String? source,
    @JsonKey(name: "bank_details") BankDetails? bankDetails,
    String? status,
    String? member,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _WithdrawalData;

  factory WithdrawalData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalDataFromJson(json);
}

// --- Bank Details Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class BankDetails with _$BankDetails {
  const BankDetails._();
  const factory BankDetails({
    String? bank,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_number") String? accountNumber,
    @JsonKey(name: "sort_code") String? sortCode,
  }) = _BankDetails;

  factory BankDetails.fromJson(Map<String, dynamic> json) =>
      _$BankDetailsFromJson(json);
}
