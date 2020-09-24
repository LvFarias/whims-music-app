import 'package:app/routes/routes.dart';
import 'package:app/services/user.dart';
import 'package:get/get.dart';

class InitialCtrl extends GetxController {
  final WhUserService userService = Get.find();

  String route = WhRoutes.LOGIN;

  void init() async {
    await this.getUser();
  }

  getUser() async {
    bool isLogged = await userService.isLogged();
    if (!isLogged) {
      this.route = WhRoutes.LOGIN;
    } else {
      this.route = WhRoutes.HOME;
    }
    Get.toNamed(this.route);
  }
}
