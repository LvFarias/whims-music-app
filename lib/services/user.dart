import 'dart:convert';

import 'package:app/models/user.dart';
import 'package:app/services/storage.dart';
import 'package:get/get.dart';

class WhUser extends GetxService {
  final storage = WhStorage();

  User user;

  Future<bool> isLogged() async {
    await this.getUserData();
    return this.user.id.isNotEmpty;
  }

  Future<User> getUserData() async {
    String userString = await storage.getValue("user");
    this.user = User.fromJson(jsonDecode(userString));
    return this.user;
  }
}
