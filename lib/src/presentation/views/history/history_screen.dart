import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_calculator/app/constants/status/status.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_bloc.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_event.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_state.dart';
import 'package:loan_calculator/src/presentation/constants/app_strings.dart';
import 'package:loan_calculator/src/presentation/views/history/widgets/history_card.dart';
import 'package:loan_calculator/src/presentation/views/widgets/background_texture.dart';
import 'package:loan_calculator/src/presentation/views/widgets/empty_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LoanBloc>().add(const LoanEvent.loadHistory());
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTexture(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon:
                Icon(Icons.arrow_back, color: AppColors.textBlack, size: 24.dp),
          ),
          title: Text(
            AppStrings.savedCalculations,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 18.sp,
              color: AppColors.textBlack,
            ),
          ),
        ),
        body: BlocBuilder<LoanBloc, LoanState>(
          builder: (context, state) {
            if (state.historyStatus is StatusLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.history.isEmpty) {
              return const EmptyWidget(text: AppStrings.noSavedCalculations);
            }

            return ListView.builder(
              padding: EdgeInsets.all(16.dp),
              itemCount: state.history.length,
              itemBuilder: (context, index) =>
                  HistoryCard(item: state.history[index]),
            );
          },
        ),
      ),
    );
  }
}
