import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/bank_info.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';
part 'investment_tenure.freezed.dart';
part 'investment_tenure.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class InvestmentTenureData with _$InvestmentTenureData {
  const InvestmentTenureData._();
  const factory InvestmentTenureData({
    int? id,
    String? name,
    int? duration,
    @JsonKey(name: "profit_percentage") int? profitPercentage,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _InvestmentTenureData;

  factory InvestmentTenureData.fromJson(Map<String, dynamic> json) =>
      _$InvestmentTenureDataFromJson(json);
}
