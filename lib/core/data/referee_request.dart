import 'package:flutter/foundation.dart'; // Required for @freezed

import 'package:fhcs/core/data/investment.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/referee.dart'
    show $RefereeDataCopyWith, RefereeData;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referee_request.freezed.dart';
part 'referee_request.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class RefereeRequestData with _$RefereeRequestData {
  const factory RefereeRequestData({
    int? id,
    RefereeData? referee, // Using your existing RefereeData model
    User? user,
    InvestmentData?
        investment, // This is null in your example, so it's nullable
    String? status,
    LoanData? loan, // Nested loan object
  }) = _RefereeRequestData;

  factory RefereeRequestData.fromJson(Map<String, dynamic> json) =>
      _$RefereeRequestDataFromJson(json);
}

// --- Your existing RefereeData model (reused) ---
// I've added imageUrl as it appears in the 'referee' object in your new data.
// @Freezed(unionValueCase: FreezedUnionCase.snake)
// class RefereeData with _$RefereeData {
//   const RefereeData._();
//   const factory RefereeData({
//     int? id,
//     @JsonKey(name: "ir_number") String? irNumber,
//     @JsonKey(name: "first_name") String? firstName,
//     @JsonKey(name: "last_name") String? lastName,
//     @JsonKey(name: "image_url") String? imageUrl, // Added this field
//   }) = _RefereeData;

//   factory RefereeData.fromJson(Map<String, dynamic> json) =>
//       _$RefereeDataFromJson(json);
// }

// --- Investment Model ---
// Based on your example, 'investment' is null.
// If it can have fields, you'd add them here. For now, it's a simple empty class.
@Freezed(unionValueCase: FreezedUnionCase.snake)
class Investment with _$Investment {
  const factory Investment({
    // Add fields here if investment can have data (e.g., id, amount, etc.)
    int? id,
  }) = _Investment;

  factory Investment.fromJson(Map<String, dynamic> json) =>
      _$InvestmentFromJson(json);
}

// --- Loan Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class Loan with _$Loan {
  const factory Loan({
    int? id,
    String? lid,
    @JsonKey(name: "loan_type") String? loanType,
    double? amount, // Assuming amount could be a double
    int? duration,
    String? status,
    LoanUser? user, // Nested user object within loan
  }) = _Loan;

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);
}

// --- LoanUser Model ---
// This is specific to the user within the loan object, it's essentially
// the same structure as RefereeData but semantically distinct.
@Freezed(unionValueCase: FreezedUnionCase.snake)
class LoanUser with _$LoanUser {
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
