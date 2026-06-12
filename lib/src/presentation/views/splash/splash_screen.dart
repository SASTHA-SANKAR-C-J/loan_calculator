import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan_calculator/app/app_router/app_router.dart';
import 'package:loan_calculator/app/theme/app_colors.dart';
import 'package:loan_calculator/app/theme/app_typography.dart';
import 'package:loan_calculator/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          context.router.pushAndPopUntil(
            const LoanCalculatorRoute(),
            predicate: (_) => false,
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFFFFFFF),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            Image.asset(AppImages.splashBg, fit: BoxFit.fill),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Loan',
                    style: AppTypography.roundoBold.copyWith(
                      fontSize: 48.sp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    'Calculator',
                    style: AppTypography.roundoRegular.copyWith(
                      fontSize: 28.sp,
                      color: AppColors.textGrey,
                    ),
                  ),
                  SizedBox(height: 16.dp),
                  Text(
                    'Plan your payments wisely',
                    style: AppTypography.roundoRegular.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.textLightGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
