import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan_calculator/app/app.dart';
import 'package:loan_calculator/app/locator/locator.dart';
import 'package:loan_calculator/app/services/local_storage_service.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  configureDependencies();
  await LocalStorage.init();
  runApp(MyApp());
}
