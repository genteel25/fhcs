import 'package:flutter/foundation.dart'; // Required for @freezed

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

enum TransactionType { debit, credit, lien }

// --- Transaction Record Model ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class TransactionData with _$TransactionData {
  const TransactionData._();
  const factory TransactionData({
    int? id,
    String? tid,
    @JsonKey(name: "account_type") String? accountType,
    double? amount,
    @JsonKey(name: "balance_before") double? balanceBefore,
    @JsonKey(name: "balance_after") double? balanceAfter,
    @JsonKey(name: "lien_balance_before") double? lienBalanceBefore,
    @JsonKey(name: "lien_balance_after") double? lienBalanceAfter,
    String? description,
    @JsonKey(name: "transaction_type") String? transactionType,
    @JsonKey(name: "operation_type") String? operationType,
    TransactionUser? user, // Nested user object for the transaction
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);

  TransactionType get type => switch (transactionType?.toLowerCase()) {
        "debit" => TransactionType.debit,
        "credit" => TransactionType.credit,
        "lien" => TransactionType.lien,
        _ => throw ArgumentError("Unknown transaction type: $transactionType"),
      };
}

// --- Nested User Model for Transaction (to avoid naming conflicts) ---
@Freezed(unionValueCase: FreezedUnionCase.snake)
class TransactionUser with _$TransactionUser {
  const TransactionUser._();
  const factory TransactionUser({
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "ir_number") String? irNumber,
    int? id,
  }) = _TransactionUser;

  factory TransactionUser.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserFromJson(json);
}
