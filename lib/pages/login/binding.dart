import 'package:app/pages/login/ctrl.dart';
import 'package:app/services/user.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginCtrl>(() => LoginCtrl());
    Get.lazyPut<WhUserService>(() => WhUserService());
  }
}
