import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/domain/models/loan_calculation_model/loan_calculation_model.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class PaymentScheduleWidget extends StatelessWidget {
  final LoanCalculationModel result;

  const PaymentScheduleWidget({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    if (result.paymentType == PaymentType.annuity) {
      if (result.termMonths > 360) return const SizedBox.shrink();
      return _buildPieChart();
    }

    return _buildBarChart();
  }

  Widget _buildPieChart() {
    final principal = result.loanAmount;
    final interest = result.totalInterest;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentBreakdown,
          style: AppTypography.roundoSemiBold.copyWith(
            fontSize: 14.sp,
            color: AppColors.textBlack,
          ),
        ),
        Gap(12.dp),
        SizedBox(
          height: 200.dp,
          child: SfCircularChart(
            legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              textStyle: AppTypography.roundoRegular.copyWith(
                fontSize: 12.sp,
                color: AppColors.textGrey,
              ),
            ),
            series: <CircularSeries>[
              PieSeries<_ChartData, String>(
                dataSource: [
                  _ChartData(AppStrings.principal, principal, AppColors.primaryColor),
                  _ChartData(AppStrings.interest, interest, AppColors.hardnessColor),
                ],
                pointColorMapper: (data, _) => data.color,
                xValueMapper: (data, _) => data.label,
                yValueMapper: (data, _) => data.value,
                dataLabelMapper: (data, _) =>
                    '${(data.value / (principal + interest) * 100).toStringAsFixed(1)}%',
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  textStyle: AppTypography.roundoSemiBold.copyWith(
                    fontSize: 11.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBarChart() {
    final schedule = result.paymentSchedule;
    final totalMonths = schedule.length;
    final maxBars = totalMonths > 60 ? 60 : totalMonths;
    final step = (totalMonths / maxBars).ceil();

    final chartData = <_BarData>[];
    for (int i = 0; i < totalMonths; i += step) {
      final label = i < 12 ? 'M${i + 1}' : 'Mo${i + 1}';
      chartData.add(_BarData(label, schedule[i]));
    }

    if (chartData.length > 30) {
      chartData.removeRange(30, chartData.length);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentBreakdown,
          style: AppTypography.roundoSemiBold.copyWith(
            fontSize: 14.sp,
            color: AppColors.textBlack,
          ),
        ),
        Gap(12.dp),
        SizedBox(
          height: 200.dp,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              labelRotation: chartData.length > 12 ? -45 : 0,
              labelStyle: AppTypography.roundoRegular.copyWith(
                fontSize: chartData.length > 12 ? 9.sp : 10.sp,
                color: AppColors.textGrey,
              ),
              labelPlacement: LabelPlacement.onTicks,
            ),
            primaryYAxis: NumericAxis(
              isVisible: false,
              minimum: 0,
            ),
            series: <CartesianSeries>[
              ColumnSeries<_BarData, String>(
                dataSource: chartData,
                xValueMapper: (data, _) => data.label,
                yValueMapper: (data, _) => data.value,
                color: AppColors.primaryColor,
              ),
            ],
            plotAreaBorderWidth: 0,
          ),
        ),
        if (totalMonths > 60)
          Padding(
            padding: EdgeInsets.only(top: 4.dp),
            child: Text(
              'Showing first 60 months (of $totalMonths)',
              style: AppTypography.roundoRegular.copyWith(
                fontSize: 10.sp,
                color: AppColors.textLightGrey,
              ),
            ),
          ),
      ],
    );
  }
}

class _ChartData {
  final String label;
  final double value;
  final Color color;

  _ChartData(this.label, this.value, this.color);
}

class _BarData {
  final String label;
  final double value;

  _BarData(this.label, this.value);
}
