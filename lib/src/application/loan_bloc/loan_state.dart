import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_calculator/app/constants/status/status.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';

part 'loan_state.freezed.dart';

@freezed
abstract class LoanState with _$LoanState {
  const factory LoanState({
    Status? calculateStatus,
    Status? saveStatus,
    Status? deleteStatus,
    Status? historyStatus,
    LoanCalculationModel? currentCalculation,
    @Default([]) List<LoanCalculationModel> history,
  }) = _LoanState;
}
