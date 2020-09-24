import 'package:app/pages/home/ctrl.dart';
import 'package:app/services/user.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeCtrl>(() => HomeCtrl());
    Get.lazyPut<WhUserService>(() => WhUserService());
  }
}
