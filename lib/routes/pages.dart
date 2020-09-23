import 'package:app/pages/home/ui.dart';
import 'package:app/pages/login/ui.dart';
import 'package:app/pages/splash/ui.dart';
import 'package:app/routes/routes.dart';
import 'package:get/get.dart';

class WhPages {
  static final routes = [
    GetPage(name: WhRoutes.INITIAL, page: () => InitialPage()),
    GetPage(name: WhRoutes.LOGIN, page: () => LoginPage()),
    GetPage(name: WhRoutes.HOME, page: () => HomePage()),
  ];
}
