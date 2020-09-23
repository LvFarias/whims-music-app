import 'package:app/routes/routes.dart';
import 'package:app/services/user.dart';
import 'package:app/themes/app.dart';
import 'package:get/get.dart';

class InitialCtrl extends GetxController {
  final WhUser userService = WhUser();

  String route = WhRoutes.LOGIN;

  void init() async {
    // await this.getTheme();
    await this.getUser();
  }

  getTheme() async {
    String theme = await userService.storage.getValue("theme");
    if (theme == "dark") {
      Get.changeTheme(whThemeDark);
    }
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
