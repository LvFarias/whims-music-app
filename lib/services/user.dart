import 'package:app/models/user.dart';
import 'package:app/routes/routes.dart';
import 'package:app/services/api.dart';
import 'package:app/services/storage.dart';
import 'package:app/themes/alerts.dart';
import 'package:get/get.dart';

class WhUserService extends GetxService {
  final WhApiService apiService = Get.find();
  final WhStorageService storage = Get.find();

  User user;

  Future<bool> isLogged() async {
    await this.getUserData();
    return !this.user.id.isNull;
  }

  Future<User> getUserData() async {
    String userString = await storage.getValue("user");
    this.user = User.fromStorage(userString);
    return this.user;
  }

  Future<User> login(String email, String password) async {
    await apiService
        .post('login', body: {"email": email, "password": password});
    WhToast.success('success'.tr, 'loginSuccess'.tr);
    Get.toNamed(WhRoutes.HOME);
    return this.user;
  }

  void logout() {
    storage.deleteAll();
    Get.toNamed(WhRoutes.LOGIN);
  }
}
