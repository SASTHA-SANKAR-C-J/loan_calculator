import 'package:flutter/material.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ResultRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isHighlight;

  const ResultRow({
    super.key,
    required this.label,
    required this.value,
    this.isHighlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTypography.roundoRegular.copyWith(
            fontSize: 14.sp,
            color: AppColors.textLightGrey,
          ),
        ),
        Text(
          value,
          style: (isHighlight
                  ? AppTypography.roundoBold
                  : AppTypography.roundoSemiBold)
              .copyWith(
            fontSize: isHighlight ? 20.sp : 16.sp,
            color: isHighlight ? AppColors.primaryColor : AppColors.textBlack,
          ),
        ),
      ],
    );
  }
}
