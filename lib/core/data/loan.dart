import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'loan.freezed.dart';
part 'loan.g.dart';

enum LoanStatus { approved, rejected, pending }

// --- Main Loan Record Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class LoanData with _$LoanData {
  const LoanData._();
  const factory LoanData({
    int? id,
    String? lid,
    @JsonKey(name: "loan_type") String? loanType,
    double? amount,
    @JsonKey(name: "amount_disbursed") double? amountDisbursed,
    @JsonKey(name: "amount_repaid") double? amountRePaid,
    int? duration,
    String? status,
    @JsonKey(name: "approval_status") String? approvalStatus,
    LoanUser? user, // Nested user details for the loan
    List<dynamic>?
        referees, // Assuming referees is a list of dynamic items (can be List<String>? if it's names)
    @JsonKey(name: "payslip_url") String? payslipUrl,
    @JsonKey(name: "annual_salary") double? annualSalary,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "can_approve") bool? canApprove,
    String? description,
    @JsonKey(name: "application_fee") double? applicationFee,
    @JsonKey(name: "monthly_repayment") double? monthlyRepayment,
    @JsonKey(name: "savings_balance") double? savingsBalance,
    @JsonKey(name: "loan_limit") double? loanLimit,
    @JsonKey(name: "next_approval_step")
    ApprovalStep?
        nextApprovalStep, // Nullable, can be dynamic or a specific type if defined
    @JsonKey(name: "current_approval_step") ApprovalStep? currentApprovalStep,
  }) = _LoanData;

  factory LoanData.fromJson(Map<String, dynamic> json) =>
      _$LoanDataFromJson(json);

  bool get isNormalLoan {
    return switch (loanType?.toLowerCase()) {
      "emergency" => false,
      _ => true,
    };
  }
}

// --- Nested User Model for Loan (different from AuthUser/TransactionUser if fields differ) ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class LoanUser with _$LoanUser {
  const LoanUser._();
  const factory LoanUser({
    int? id,
    @JsonKey(name: "ir_number") String? irNumber,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "image_url") String? imageUrl,
  }) = _LoanUser;

  factory LoanUser.fromJson(Map<String, dynamic> json) =>
      _$LoanUserFromJson(json);
}

// --- Current Approval Step Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class ApprovalStep with _$ApprovalStep {
  const ApprovalStep._();
  const factory ApprovalStep({
    int? order,
    List<ApprovalRole>? roles,
    String? status,
    @JsonKey(name: "action_by") ApprovalActionBy? actionBy,
    @JsonKey(name: "action_type") String? actionType,
  }) = _ApprovalStep;

  factory ApprovalStep.fromJson(Map<String, dynamic> json) =>
      _$ApprovalStepFromJson(json);

  LoanStatus get loanStatus {
    return switch (status ?? "") {
      "Pending" => LoanStatus.pending,
      "Approved" => LoanStatus.approved,
      _ => LoanStatus.rejected,
    };
  }
}

// --- Approval Role Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class ApprovalRole with _$ApprovalRole {
  const ApprovalRole._();
  const factory ApprovalRole({
    String? id, // ID is a string in your JSON example for roles
    String? name,
  }) = _ApprovalRole;

  factory ApprovalRole.fromJson(Map<String, dynamic> json) =>
      _$ApprovalRoleFromJson(json);
}

// --- Approval Action By Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class ApprovalActionBy with _$ApprovalActionBy {
  const ApprovalActionBy._();
  const factory ApprovalActionBy({
    int? id,
    @JsonKey(name: "ir_number") String? irNumber,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
  }) = _ApprovalActionBy;

  factory ApprovalActionBy.fromJson(Map<String, dynamic> json) =>
      _$ApprovalActionByFromJson(json);
}
