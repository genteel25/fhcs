import 'package:fhcs/core/data/loan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'loan_repayment.freezed.dart';
part 'loan_repayment.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class LoanRepaymentData with _$LoanRepaymentData {
  const LoanRepaymentData._();
  const factory LoanRepaymentData({
    int? id,
    String? channel,
    LoanData? loan,
    num? amount,
    @JsonKey(name: "total_outstanding_before") num? totalOutstandingBefore,
    @JsonKey(name: "total_outstanding_after") num? totalOutstandingAfter,
  }) = _LoanRepaymentData;

  factory LoanRepaymentData.fromJson(Map<String, dynamic> json) =>
      _$LoanRepaymentDataFromJson(json);
}
