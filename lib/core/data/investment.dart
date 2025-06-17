import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'investment.freezed.dart';
part 'investment.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class InvestmentData with _$InvestmentData {
  const factory InvestmentData({
    int? id,
    String? iid,
    @JsonKey(name: 'investment_type') InvestmentType? investmentType,
    double? amount, // Use double for monetary values
    @JsonKey(name: 'investment_amount') double? investmentAmount,
    @JsonKey(name: 'amount_repaid') double? amountRepaid,
    Tenure? tenure,
    @JsonKey(name: 'profit_percentage')
    double? profitPercentage, // Can be int or double
    String? status,
    @JsonKey(name: 'approval_status') String? approvalStatus,
    Object?
        user, // 'user' is null in your example, so `Object?` is a safe fallback. Could be a specific User model if it ever contains data.
    List<RefereeItem>? referees,
    @JsonKey(name: 'changes_requested')
    Map<String, dynamic>? changesRequested, // Empty object, so a Map
    @JsonKey(name: 'vendor_contact') String? vendorContact,
    @JsonKey(name: 'vendor_name') String? vendorName,
    List<Witness>? witnesses,
    @JsonKey(name: 'created_at')
    DateTime? createdAt, // Using DateTime for timestamps
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt, // Using DateTime for timestamps
  }) = _InvestmentData;

  factory InvestmentData.fromJson(Map<String, dynamic> json) =>
      _$InvestmentDataFromJson(json);
}

// --- Nested Models ---

@Freezed(unionValueCase: FreezedUnionCase.snake)
class InvestmentType with _$InvestmentType {
  const factory InvestmentType({
    int? id,
    String? name,
    String? description,
  }) = _InvestmentType;

  factory InvestmentType.fromJson(Map<String, dynamic> json) =>
      _$InvestmentTypeFromJson(json);
}

@Freezed(unionValueCase: FreezedUnionCase.snake)
class Tenure with _$Tenure {
  const factory Tenure({
    int? id,
    String? name,
    int? duration,
    @JsonKey(name: 'profit_percentage')
    double? profitPercentage, // Can be int or double
  }) = _Tenure;

  factory Tenure.fromJson(Map<String, dynamic> json) => _$TenureFromJson(json);
}

@Freezed(unionValueCase: FreezedUnionCase.snake)
class RefereeItem with _$RefereeItem {
  const factory RefereeItem({
    int? id,
    RefereeUser? referee,
    String? status,
  }) = _RefereeItem;

  factory RefereeItem.fromJson(Map<String, dynamic> json) =>
      _$RefereeItemFromJson(json);
}

@Freezed(unionValueCase: FreezedUnionCase.snake)
class RefereeUser with _$RefereeUser {
  const factory RefereeUser({
    int? id,
    @JsonKey(name: 'ir_number') String? irNumber,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _RefereeUser;

  factory RefereeUser.fromJson(Map<String, dynamic> json) =>
      _$RefereeUserFromJson(json);
}

@Freezed(unionValueCase: FreezedUnionCase.snake)
class Witness with _$Witness {
  const factory Witness({
    int? id,
    @JsonKey(name: 'ir_number') String? irNumber,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Witness;

  factory Witness.fromJson(Map<String, dynamic> json) =>
      _$WitnessFromJson(json);
}
