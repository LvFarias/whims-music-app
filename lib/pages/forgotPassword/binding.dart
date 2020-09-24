import 'package:app/pages/forgotPassword/ctrl.dart';
import 'package:app/services/user.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordCtrl>(() => ForgotPasswordCtrl());
    Get.lazyPut<WhUserService>(() => WhUserService());
  }
}
