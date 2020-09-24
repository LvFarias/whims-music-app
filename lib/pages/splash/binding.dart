import 'package:app/pages/splash/ctrl.dart';
import 'package:app/services/api.dart';
import 'package:app/services/storage.dart';
import 'package:app/services/user.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialCtrl>(() => InitialCtrl());
    Get.lazyPut<WhStorageService>(() => WhStorageService());
    Get.lazyPut<WhApiService>(() => WhApiService());
    Get.lazyPut<WhUserService>(() => WhUserService());
  }
}
