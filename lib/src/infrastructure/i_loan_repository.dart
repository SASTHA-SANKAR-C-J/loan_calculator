import 'dart:convert';
import 'dart:math' as math;
import 'package:injectable/injectable.dart';
import 'package:loan_calculator/app/services/local_storage_service.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/domain/repositories/loan_repository.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: LoanRepository)
class LoanRepositoryImplementation implements LoanRepository {
  static const String _storageKey = 'loan_calculations';

  @override
  LoanCalculationModel calculate({
    required double loanAmount,
    required double interestRate,
    required int termMonths,
    required PaymentType paymentType,
  }) {
    final monthlyRate = interestRate / 12 / 100;
    double monthlyPayment;
    double totalPayment;
    double totalInterest;
    List<double> paymentSchedule;

    if (paymentType == PaymentType.annuity) {
      if (monthlyRate == 0) {
        monthlyPayment = loanAmount / termMonths;
      } else {
        final factor = math.pow(1 + monthlyRate, termMonths);
        monthlyPayment =
            loanAmount * (monthlyRate * factor) / (factor - 1);
      }
      paymentSchedule = List.filled(termMonths, monthlyPayment);
      totalPayment = monthlyPayment * termMonths;
      totalInterest = totalPayment - loanAmount;
    } else {
      final principalPart = loanAmount / termMonths;
      paymentSchedule = [];
      var remainingBalance = loanAmount;

      for (int i = 0; i < termMonths; i++) {
        final interestPart = remainingBalance * monthlyRate;
        final payment = principalPart + interestPart;
        paymentSchedule.add(payment);
        remainingBalance -= principalPart;
      }

      monthlyPayment = paymentSchedule.first;
      totalPayment = paymentSchedule.fold(0, (sum, p) => sum + p);
      totalInterest = totalPayment - loanAmount;
    }

    return LoanCalculationModel(
      id: const Uuid().v4(),
      loanAmount: loanAmount,
      interestRate: interestRate,
      termMonths: termMonths,
      paymentType: paymentType,
      monthlyPayment: monthlyPayment,
      totalPayment: totalPayment,
      totalInterest: totalInterest,
      paymentSchedule: paymentSchedule,
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<void> saveCalculation(LoanCalculationModel calculation) async {
    final history = await getHistory();
    history.insert(0, calculation);

    if (history.length > 100) {
      history.removeRange(100, history.length);
    }

    final jsonList = history.map((e) => e.toJson()).toList();
    await LocalStorage.setString(_storageKey, jsonEncode(jsonList));
  }

  @override
  Future<List<LoanCalculationModel>> getHistory() async {
    final jsonString = LocalStorage.getString(_storageKey);
    if (jsonString == null || jsonString.isEmpty) return [];

    try {
      final jsonList = jsonDecode(jsonString) as List;
      return jsonList
          .map((e) =>
              LoanCalculationModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<void> deleteCalculation(String id) async {
    final history = await getHistory();
    history.removeWhere((e) => e.id == id);
    final jsonList = history.map((e) => e.toJson()).toList();
    await LocalStorage.setString(_storageKey, jsonEncode(jsonList));
  }
}
