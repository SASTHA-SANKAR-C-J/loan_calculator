import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:loan_calculator/src/presentation/views/history/widgets/delete_confirm_dialog.dart';
import 'package:loan_calculator/src/presentation/views/widgets/primary_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class HistoryCard extends StatelessWidget {
  final LoanCalculationModel item;

  const HistoryCard({super.key, required this.item});

  String _formatCurrency(double value) {
    final format = NumberFormat('#,##,##0.00');
    return '${AppStrings.currencySymbol} ${format.format(value)}';
  }

  String _paymentTypeLabel(PaymentType type) {
    return type == PaymentType.annuity
        ? AppStrings.annuity
        : AppStrings.differentiated;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd MMM yyyy, HH:mm');

    return Container(
      margin: EdgeInsets.only(bottom: 12.dp),
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.dp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _formatCurrency(item.loanAmount),
                style: AppTypography.roundoSemiBold.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.textBlack,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 8.dp, vertical: 4.dp),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4.dp),
                ),
                child: Text(
                  _paymentTypeLabel(item.paymentType),
                  style: AppTypography.roundoSemiBold.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Gap(12.dp),
          Row(
            children: [
              Expanded(
                child: _infoColumn(
                  'Rate',
                  '${item.interestRate.toStringAsFixed(2)}%',
                ),
              ),
              Expanded(
                child: _infoColumn(
                  'Term',
                  '${item.termMonths} months',
                ),
              ),
            ],
          ),
          Gap(8.dp),
          Row(
            children: [
              Expanded(
                child: _infoColumn(
                  AppStrings.monthlyPayment,
                  _formatCurrency(item.monthlyPayment),
                ),
              ),
              Expanded(
                child: _infoColumn(
                  AppStrings.totalInterest,
                  _formatCurrency(item.totalInterest),
                ),
              ),
            ],
          ),
          Gap(8.dp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateFormat.format(item.createdAt),
                style: AppTypography.roundoRegular.copyWith(
                  fontSize: 11.sp,
                  color: AppColors.textLightGrey,
                ),
              ),
              SizedBox(
                height: 32.dp,
                child: PrimaryButton(
                  text: AppStrings.delete,
                  onPressed: () => showDeleteConfirmDialog(context, item.id),
                  backgroundColor: AppColors.redColorr,
                  width: 80.dp,
                  height: 32.dp,
                  contentPadding: 8.dp,
                  textSize: 12.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.roundoRegular.copyWith(
            fontSize: 11.sp,
            color: AppColors.textLightGrey,
          ),
        ),
        Text(
          value,
          style: AppTypography.roundoSemiBold.copyWith(
            fontSize: 13.sp,
            color: AppColors.textBlack,
          ),
        ),
      ],
    );
  }
}
