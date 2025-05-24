import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.freezed.dart';
part 'payment.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class PaymentInfoData with _$PaymentInfoData {
  const PaymentInfoData._();
  const factory PaymentInfoData({
    @JsonKey(name: "ref_id") String? refId,
    @JsonKey(name: "amount_paid") num? amountPaid,
    @JsonKey(name: "payment_type") String? paymentType,
    num? amount,
    String? currency,
    String? email,
    String? description,
    String? status,
  }) = _PaymentInfoData;

  factory PaymentInfoData.fromJson(Map<String, dynamic> json) =>
      _$PaymentInfoDataFromJson(json);
}
