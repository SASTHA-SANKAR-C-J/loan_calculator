import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_calculation_model.freezed.dart';
part 'loan_calculation_model.g.dart';

enum PaymentType { annuity, differentiated }

@freezed
abstract class LoanCalculationModel with _$LoanCalculationModel {
  const factory LoanCalculationModel({
    required String id,
    required double loanAmount,
    required double interestRate,
    required int termMonths,
    required PaymentType paymentType,
    required double monthlyPayment,
    required double totalPayment,
    required double totalInterest,
    @Default([]) List<double> paymentSchedule,
    required DateTime createdAt,
  }) = _LoanCalculationModel;

  factory LoanCalculationModel.fromJson(Map<String, dynamic> json) =>
      _$LoanCalculationModelFromJson(json);
}
