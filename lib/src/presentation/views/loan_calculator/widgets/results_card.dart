import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_calculator/app/app_router/app_router.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:loan_calculator/src/presentation/views/loan_calculator/widgets/payment_schedule_widget.dart';
import 'package:loan_calculator/src/presentation/views/loan_calculator/widgets/result_row.dart';
import 'package:loan_calculator/src/presentation/views/widgets/primary_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:intl/intl.dart';

class ResultsCard extends StatelessWidget {
  final LoanCalculationModel result;
  final VoidCallback onSave;

  const ResultsCard({
    super.key,
    required this.result,
    required this.onSave,
  });

  String _formatCurrency(double value) {
    final format = NumberFormat('#,##,##0.00');
    return '${AppStrings.currencySymbol} ${format.format(value)}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.dp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Results',
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 16.sp,
              color: AppColors.textBlack,
            ),
          ),
          Gap(16.dp),
          ResultRow(
            label: AppStrings.monthlyPayment,
            value: _formatCurrency(result.monthlyPayment),
            isHighlight: true,
          ),
          Divider(color: AppColors.dividerGrey, height: 24.dp),
          ResultRow(
            label: AppStrings.totalPayment,
            value: _formatCurrency(result.totalPayment),
          ),
          Divider(color: AppColors.dividerGrey, height: 24.dp),
          ResultRow(
            label: AppStrings.totalInterest,
            value: _formatCurrency(result.totalInterest),
          ),
          Gap(16.dp),
          PaymentScheduleWidget(result: result),
          Gap(16.dp),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  text: AppStrings.save,
                  onPressed: onSave,
                  backgroundColor: AppColors.primaryColor,
                ),
              ),
              Gap(12.dp),
              Expanded(
                child: PrimaryButton(
                  text: AppStrings.history,
                  onPressed: () => context.router.push(const HistoryRoute()),
                  backgroundColor: AppColors.white,
                  textColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
