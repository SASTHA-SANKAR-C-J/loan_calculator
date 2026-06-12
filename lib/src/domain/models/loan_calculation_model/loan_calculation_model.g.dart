// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_calculation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoanCalculationModel _$LoanCalculationModelFromJson(
  Map<String, dynamic> json,
) => _LoanCalculationModel(
  id: json['id'] as String,
  loanAmount: (json['loanAmount'] as num).toDouble(),
  interestRate: (json['interestRate'] as num).toDouble(),
  termMonths: (json['termMonths'] as num).toInt(),
  paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType']),
  monthlyPayment: (json['monthlyPayment'] as num).toDouble(),
  totalPayment: (json['totalPayment'] as num).toDouble(),
  totalInterest: (json['totalInterest'] as num).toDouble(),
  paymentSchedule:
      (json['paymentSchedule'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$LoanCalculationModelToJson(
  _LoanCalculationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'loanAmount': instance.loanAmount,
  'interestRate': instance.interestRate,
  'termMonths': instance.termMonths,
  'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
  'monthlyPayment': instance.monthlyPayment,
  'totalPayment': instance.totalPayment,
  'totalInterest': instance.totalInterest,
  'paymentSchedule': instance.paymentSchedule,
  'createdAt': instance.createdAt.toIso8601String(),
};

const _$PaymentTypeEnumMap = {
  PaymentType.annuity: 'annuity',
  PaymentType.differentiated: 'differentiated',
};
