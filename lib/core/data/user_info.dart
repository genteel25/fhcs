// You'll need to run:
// flutter pub add freeezed
// flutter pub add json_annotation
// flutter pub add freeezed_annotation
// flutter pub add build_runner --dev
// flutter pub add json_serializable --dev
//
// Then run:
// flutter pub run build_runner build --delete-conflicting-outputs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart'; // Required for @freezed

part 'user_info.freezed.dart';
part 'user_info.g.dart';

// --- Top-level response structure ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class UserInfoData with _$UserInfoData {
  const UserInfoData._();
  const factory UserInfoData({
    User? user,
    Cooperator? cooperator,
  }) = _UserInfoData;

  factory UserInfoData.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDataFromJson(json);
}

// --- User Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class User with _$User {
  const User._();
  const factory User({
    int? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "middle_name") String? middleName,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? email,
    @JsonKey(name: "ir_number") String? irNumber,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "membership_no") String? membershipNo,
    List<dynamic>? roles, // Roles can be dynamic based on your API
    String? status, // Assuming status can be a string
    dynamic deployment, // Assuming deployment can be dynamic (string/object)
    @JsonKey(name: "residential_address") String? residentialAddress,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// --- Cooperator Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class Cooperator with _$Cooperator {
  const Cooperator._();
  const factory Cooperator({
    int? id,
    @JsonKey(name: "user_id") int? userId,
    String? dob, // Consider using DateTime for better type safety
    @JsonKey(name: "state_of_origin") String? stateOfOrigin,
    @JsonKey(name: "marital_status") String? maritalStatus,
    String? deployment,
    @JsonKey(name: "salary_grade") int? salaryGrade,
    @JsonKey(name: "salary_grade_step") int? salaryGradeStep,
    @JsonKey(name: "employment_date")
    String? employmentDate, // Consider DateTime
    @JsonKey(name: "in_service") bool? inService,
    @JsonKey(name: "residential_address") String? residentialAddress,
    @JsonKey(name: "permanent_address") String? permanentAddress,
    @JsonKey(name: "office_address") String? officeAddress,
    Bank? bank,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_number") String? accountNumber,
    @JsonKey(name: "sort_code") String? sortCode,
    @JsonKey(name: "investment_percentage") double? investmentPercentage,
    @JsonKey(name: "savings_percentage") double? savingsPercentage,
    @JsonKey(name: "monthly_contribution") double? monthlyContribution,
    @JsonKey(name: "primary_nok") NokInfo? primaryNok,
    @JsonKey(name: "secondary_nok") NokInfo? secondaryNok, // Can be null
  }) = _Cooperator;

  factory Cooperator.fromJson(Map<String, dynamic> json) =>
      _$CooperatorFromJson(json);
}

// --- Bank Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class Bank with _$Bank {
  const Bank._();
  const factory Bank({
    int? id,
    String? name,
    String? code,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}

// --- NokInfo (Next of Kin) Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class NokInfo with _$NokInfo {
  const NokInfo._();
  const factory NokInfo({
    String? name,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? relationship,
    String? address,
  }) = _NokInfo;

  factory NokInfo.fromJson(Map<String, dynamic> json) =>
      _$NokInfoFromJson(json);
}
