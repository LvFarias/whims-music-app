import 'package:app/pages/forgotPassword/binding.dart';
import 'package:app/pages/forgotPassword/ui.dart';
import 'package:app/pages/home/binding.dart';
import 'package:app/pages/home/ui.dart';
import 'package:app/pages/login/binding.dart';
import 'package:app/pages/login/ui.dart';
import 'package:app/pages/splash/binding.dart';
import 'package:app/pages/splash/ui.dart';
import 'package:app/routes/routes.dart';
import 'package:get/get.dart';

class WhPages {
  static final routes = [
    GetPage(
      name: WhRoutes.INITIAL,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: WhRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: WhRoutes.FORGOT_PASSWORD,
      page: () => ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: WhRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
