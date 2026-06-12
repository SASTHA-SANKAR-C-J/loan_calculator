import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_bloc.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_event.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

void showDeleteConfirmDialog(BuildContext context, String id) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(
        AppStrings.deleteConfirm,
        style: AppTypography.roundoSemiBold.copyWith(
          fontSize: 16.sp,
          color: AppColors.textBlack,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx),
          child: Text(
            'Cancel',
            style: AppTypography.roundoRegular.copyWith(
              color: AppColors.textGrey,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(ctx);
            context.read<LoanBloc>().add(LoanEvent.deleteCalculation(id));
          },
          child: Text(
            AppStrings.delete,
            style: AppTypography.roundoSemiBold.copyWith(
              color: AppColors.redColorr,
            ),
          ),
        ),
      ],
    ),
  );
}
