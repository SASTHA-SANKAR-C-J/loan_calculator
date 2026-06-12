import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:loan_calculator/src/presentation/views/widgets/common_textfield.dart';
import 'package:loan_calculator/src/presentation/views/widgets/primary_button.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class InputCard extends StatelessWidget {
  final TextEditingController loanAmountController;
  final TextEditingController interestRateController;
  final TextEditingController termController;
  final PaymentType paymentType;
  final ValueChanged<PaymentType> onPaymentTypeChanged;
  final VoidCallback onCalculate;
  final bool isLoading;
  final GlobalKey<FormState> formKey;

  const InputCard({
    super.key,
    required this.loanAmountController,
    required this.interestRateController,
    required this.termController,
    required this.paymentType,
    required this.onPaymentTypeChanged,
    required this.onCalculate,
    required this.isLoading,
    required this.formKey,
  });

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
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.loanAmount,
              style: AppTypography.roundoSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.textGrey,
              ),
            ),
            Gap(8.dp),
            CommonTextField(
              header: AppStrings.currencySymbol,
              controller: loanAmountController,
              hintText: 'e.g. 500000',
              textInputType: TextInputType.number,
            ),
            Gap(16.dp),
            Text(
              AppStrings.annualRate,
              style: AppTypography.roundoSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.textGrey,
              ),
            ),
            Gap(8.dp),
            CommonTextField(
              header: '%',
              controller: interestRateController,
              hintText: 'e.g. 8.5',
              textInputType: TextInputType.number,
            ),
            Gap(16.dp),
            Text(
              AppStrings.termInMonths,
              style: AppTypography.roundoSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.textGrey,
              ),
            ),
            Gap(8.dp),
            CommonTextField(
              header: 'Months',
              controller: termController,
              hintText: 'e.g. 12',
              textInputType: TextInputType.number,
            ),
            Gap(16.dp),
            Text(
              AppStrings.paymentType,
              style: AppTypography.roundoSemiBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.textGrey,
              ),
            ),
            Gap(8.dp),
            Container(
              decoration: BoxDecoration(
                color: AppColors.containerGrey,
                borderRadius: BorderRadius.circular(8.dp),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => onPaymentTypeChanged(PaymentType.annuity),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.dp),
                        decoration: BoxDecoration(
                          color: paymentType == PaymentType.annuity
                              ? AppColors.primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8.dp),
                        ),
                        child: Text(
                          AppStrings.annuity,
                          textAlign: TextAlign.center,
                          style: AppTypography.roundoSemiBold.copyWith(
                            fontSize: 14.sp,
                            color: paymentType == PaymentType.annuity
                                ? Colors.white
                                : AppColors.textGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () =>
                          onPaymentTypeChanged(PaymentType.differentiated),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.dp),
                        decoration: BoxDecoration(
                          color: paymentType == PaymentType.differentiated
                              ? AppColors.primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8.dp),
                        ),
                        child: Text(
                          AppStrings.differentiated,
                          textAlign: TextAlign.center,
                          style: AppTypography.roundoSemiBold.copyWith(
                            fontSize: 14.sp,
                            color: paymentType == PaymentType.differentiated
                                ? Colors.white
                                : AppColors.textGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(20.dp),
            PrimaryButton(
              text: AppStrings.calculate,
              onPressed: onCalculate,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
