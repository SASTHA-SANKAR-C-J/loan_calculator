import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';

part 'loan_event.freezed.dart';

@freezed
class LoanEvent with _$LoanEvent {
  const factory LoanEvent.calculate({
    required double loanAmount,
    required double interestRate,
    required int termMonths,
    required PaymentType paymentType,
  }) = CalculateLoan;

  const factory LoanEvent.saveCalculation({
    required LoanCalculationModel calculation,
  }) = SaveCalculation;

  const factory LoanEvent.loadHistory() = LoadHistory;

  const factory LoanEvent.deleteCalculation(String id) = DeleteCalculation;
}
