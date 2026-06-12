import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_calculator/app/constants/status/status.dart';
import 'package:loan_calculator/src/domain/repositories/loan_repository.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_event.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_state.dart';

@injectable
class LoanBloc extends Bloc<LoanEvent, LoanState> {
  final LoanRepository _loanRepository;

  LoanBloc(this._loanRepository) : super(const LoanState()) {
    on<CalculateLoan>(_onCalculate);
    on<SaveCalculation>(_onSave);
    on<LoadHistory>(_onLoadHistory);
    on<DeleteCalculation>(_onDelete);
  }

  void _onCalculate(CalculateLoan event, Emitter<LoanState> emit) {
    emit(state.copyWith(calculateStatus: Status.loading()));

    try {
      final result = _loanRepository.calculate(
        loanAmount: event.loanAmount,
        interestRate: event.interestRate,
        termMonths: event.termMonths,
        paymentType: event.paymentType,
      );

      emit(state.copyWith(
        calculateStatus: Status.success(),
        currentCalculation: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        calculateStatus: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onSave(SaveCalculation event, Emitter<LoanState> emit) async {
    emit(state.copyWith(saveStatus: Status.loading()));

    try {
      await _loanRepository.saveCalculation(event.calculation);
      emit(state.copyWith(saveStatus: Status.success()));
    } catch (e) {
      emit(state.copyWith(saveStatus: Status.failure(e.toString())));
    }
  }

  Future<void> _onLoadHistory(
      LoadHistory event, Emitter<LoanState> emit) async {
    emit(state.copyWith(historyStatus: Status.loading()));

    try {
      final history = await _loanRepository.getHistory();
      emit(state.copyWith(
        historyStatus: Status.success(),
        history: history,
      ));
    } catch (e) {
      emit(state.copyWith(
        historyStatus: Status.failure(e.toString()),
      ));
    }
  }

  Future<void> _onDelete(
      DeleteCalculation event, Emitter<LoanState> emit) async {
    emit(state.copyWith(deleteStatus: Status.loading()));

    try {
      await _loanRepository.deleteCalculation(event.id);
      final history = await _loanRepository.getHistory();
      emit(state.copyWith(deleteStatus: Status.success(),
        history: history,
      ));
    } catch (e) {
      emit(state.copyWith(deleteStatus: Status.failure(e.toString())));
    }
  }
}
