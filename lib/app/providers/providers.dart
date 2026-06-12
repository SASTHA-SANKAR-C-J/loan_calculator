import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_calculator/app/locator/locator.dart';
import 'package:loan_calculator/src/application/loan_bloc/loan_bloc.dart';

List<BlocProvider> kBlocProviders = [
  BlocProvider<LoanBloc>(create: (context) => getIt<LoanBloc>()),
];
