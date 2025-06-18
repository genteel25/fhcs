// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_repayment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanRepaymentDataImpl _$$LoanRepaymentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanRepaymentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      channel: json['channel'] as String?,
      loan: json['loan'] == null
          ? null
          : LoanData.fromJson(json['loan'] as Map<String, dynamic>),
      amount: json['amount'] as num?,
      totalOutstandingBefore: json['total_outstanding_before'] as num?,
      totalOutstandingAfter: json['total_outstanding_after'] as num?,
    );

Map<String, dynamic> _$$LoanRepaymentDataImplToJson(
        _$LoanRepaymentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'loan': instance.loan,
      'amount': instance.amount,
      'total_outstanding_before': instance.totalOutstandingBefore,
      'total_outstanding_after': instance.totalOutstandingAfter,
    };
