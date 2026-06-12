import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';

abstract class LoanRepository {
  LoanCalculationModel calculate({
    required double loanAmount,
    required double interestRate,
    required int termMonths,
    required PaymentType paymentType,
  });

  Future<void> saveCalculation(LoanCalculationModel calculation);
  Future<List<LoanCalculationModel>> getHistory();
  Future<void> deleteCalculation(String id);
}
