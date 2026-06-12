// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:loan_calculator/src/application/loan_bloc/loan_bloc.dart'
    as _i896;
import 'package:loan_calculator/src/domain/repositories/loan_repository.dart'
    as _i346;
import 'package:loan_calculator/src/infrastructure/i_loan_repository.dart'
    as _i179;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i346.LoanRepository>(
      () => _i179.LoanRepositoryImplementation(),
    );
    gh.factory<_i896.LoanBloc>(
      () => _i896.LoanBloc(gh<_i346.LoanRepository>()),
    );
    return this;
  }
}
