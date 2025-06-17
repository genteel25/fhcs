import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/data/bank_info.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/data/personal_info.dart';
part 'investment_type.freezed.dart';
part 'investment_type.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class InvestmentTypeData with _$InvestmentTypeData {
  const InvestmentTypeData._();
  const factory InvestmentTypeData({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _InvestmentTypeData;

  factory InvestmentTypeData.fromJson(Map<String, dynamic> json) =>
      _$InvestmentTypeDataFromJson(json);
}
