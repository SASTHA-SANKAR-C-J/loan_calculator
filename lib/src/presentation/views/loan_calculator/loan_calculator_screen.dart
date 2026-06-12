import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:loan_calculator/app/app_router/app_router.dart';
import 'package:loan_calculator/app/constants/status/status.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_bloc.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_event.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_state.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:loan_calculator/src/presentation/views/loan_calculator/widgets/input_card.dart';
import 'package:loan_calculator/src/presentation/views/loan_calculator/widgets/results_card.dart';
import 'package:loan_calculator/src/presentation/views/widgets/background_texture.dart';
import 'package:loan_calculator/src/presentation/views/widgets/the_toast.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class LoanCalculatorScreen extends StatefulWidget {
  const LoanCalculatorScreen({super.key});

  @override
  State<LoanCalculatorScreen> createState() => _LoanCalculatorScreenState();
}

class _LoanCalculatorScreenState extends State<LoanCalculatorScreen> {
  final _loanAmountController = TextEditingController();
  final _interestRateController = TextEditingController();
  final _termController = TextEditingController();
  PaymentType _paymentType = PaymentType.annuity;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _loanAmountController.dispose();
    _interestRateController.dispose();
    _termController.dispose();
    super.dispose();
  }

  void _calculate() {
    if (!_formKey.currentState!.validate()) return;

    final loanAmount = double.tryParse(_loanAmountController.text) ?? 0;
    final interestRate = double.tryParse(_interestRateController.text) ?? 0;
    final termMonths = int.tryParse(_termController.text) ?? 0;

    if (loanAmount <= 0) {
      TheMessage.show(
        message: AppStrings.errorZeroAmount,
        context: context,
      );
      return;
    }
    if (interestRate < 0) {
      TheMessage.show(
        message: AppStrings.errorInvalidRate,
        context: context,
      );
      return;
    }
    if (termMonths <= 0) {
      TheMessage.show(
        message: AppStrings.errorInvalidTerm,
        context: context,
      );
      return;
    }

    context.read<LoanBloc>().add(LoanEvent.calculate(
          loanAmount: loanAmount,
          interestRate: interestRate,
          termMonths: termMonths,
          paymentType: _paymentType,
        ));
  }

  void _save() {
    final calculation = context.read<LoanBloc>().state.currentCalculation;
    if (calculation != null) {
      context.read<LoanBloc>().add(SaveCalculation(calculation: calculation));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTexture(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppStrings.appName,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 18.sp,
              color: AppColors.textBlack,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => context.router.push(const HistoryRoute()),
              icon: Icon(
                Icons.history,
                color: AppColors.primaryColor,
                size: 24.dp,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.dp),
          child: BlocConsumer<LoanBloc, LoanState>(
            listener: (context, state) {
              if (state.saveStatus is StatusSuccess) {
                TheMessage.show(
                  message: AppStrings.saved,
                  context: context,
                  type: MessageType.success,
                );
              }
              if (state.saveStatus is StatusFailure) {
                TheMessage.show(
                  message: (state.saveStatus as StatusFailure).errorMessage,
                  context: context,
                );
              }
            },
            listenWhen: (previous, current) =>
                (current.saveStatus is StatusSuccess &&
                        previous.saveStatus is! StatusSuccess) ||
                (current.saveStatus is StatusFailure &&
                    previous.saveStatus is! StatusFailure),
            builder: (context, state) {
              return Column(
                children: [
                  InputCard(
                    loanAmountController: _loanAmountController,
                    interestRateController: _interestRateController,
                    termController: _termController,
                    paymentType: _paymentType,
                    onPaymentTypeChanged: (type) =>
                        setState(() => _paymentType = type),
                    onCalculate: _calculate,
                    isLoading: state.calculateStatus is StatusLoading,
                    formKey: _formKey,
                  ),
                  Gap(16.dp),
                  if (state.currentCalculation != null)
                    ResultsCard(
                      result: state.currentCalculation!,
                      onSave: _save,
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
