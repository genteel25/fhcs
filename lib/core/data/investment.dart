import 'package:flutter/foundation.dart'; // Required for @freezed

import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';
part 'investment.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class InvestmentData with _$InvestmentData {
  const factory InvestmentData({
    int? id,
    String? iid,
    @JsonKey(name: 'investment_type') InvestmentType? investmentType,
    double? amount,
    @JsonKey(name: 'investment_amount') double? investmentAmount,
    @JsonKey(name: 'amount_repaid') double? amountRepaid,
    Tenure? tenure,
    @JsonKey(name: 'profit_percentage') double? profitPercentage,
    String? status,
    @JsonKey(name: 'approval_status') String? approvalStatus,
    User? user,
    List<RefereeItem>? referees,
    @JsonKey(name: 'changes_requested') Map<String, dynamic>? changesRequested,
    @JsonKey(name: 'vendor_contact') String? vendorContact,
    @JsonKey(name: 'vendor_name') String? vendorName,
    List<Witness>? witnesses,
    @JsonKey(name: 'investment_limit') double? investmentLimit,
    @JsonKey(name: 'investment_balance') double? investmentBalance,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'disbursed_at') DateTime? disbursedAt,
    @JsonKey(name: 'approved_at') DateTime? approvedAt,
    @JsonKey(name: 'rejected_at') DateTime? rejectedAt,
    String? description,
    String? purpose,
    @JsonKey(name: 'can_approve') bool? canApprove,
    @JsonKey(name: 'next_approval_step') NextApprovalStep? nextApprovalStep,
    @JsonKey(name: 'current_approval_step') Object? currentApprovalStep,
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
    @JsonKey(name: "user") RefereeUser? referee,
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

@freezed
class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: 'ir_number') String? irNumber,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum InvestmentStatus { approved, rejected, pending }

@freezed
class NextApprovalStep with _$NextApprovalStep {
  const NextApprovalStep._();
  const factory NextApprovalStep({
    int? order,
    List<Role>? roles,
    String? status,
    @JsonKey(name: 'action_by') String? actionBy,
    @JsonKey(name: 'action_type') String? actionType,
  }) = _NextApprovalStep;

  factory NextApprovalStep.fromJson(Map<String, dynamic> json) =>
      _$NextApprovalStepFromJson(json);

  InvestmentStatus get investmentStatus {
    return switch (status ?? "") {
      "Pending" => InvestmentStatus.pending,
      "Approved" => InvestmentStatus.approved,
      _ => InvestmentStatus.rejected,
    };
  }
}

@freezed
class Role with _$Role {
  const factory Role({
    String? id,
    String? name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
