import 'dart:convert';

import 'package:app/routes/routes.dart';
import 'package:app/services/storage.dart';
import 'package:app/themes/alerts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class WhApiService extends GetxService {
  final WhStorageService storage = Get.find();

  Map<String, String> headers = {};
  bool isFullResponse = false;
  String apiUrl = 'http://192.168.15.9:4274/';

  @override
  void onInit() {
    this.getToken();
    super.onInit();
  }

  void getToken() async {
    String token = await this.storage.getValue('token');
    if (!token.isNull) {
      String authorization = 'Bearer ${token.toString()}';
      this.headers['Authorization'] = authorization;
    }
  }

  void errorHandler(Map<String, dynamic> body) {
    if (body['status'] == 401) {
      Get.toNamed(WhRoutes.LOGIN);
    } else {
      WhToast.error('error'.tr, body['message'].tr);
    }
  }

  dynamic responseHandler(dynamic response) {
    Map<String, dynamic> body =
        response.body.isNull ? {} : jsonDecode(response.body);
    body['status'] = response.statusCode;

    if (response.statusCode != 200) {
      this.errorHandler(body);
      throw Exception(body['message']);
    }
    return body;
  }

  Future<Map<String, dynamic>> get(String url,
      {Map<String, String> params}) async {
    final http.Response response =
        await http.get(apiUrl + url, headers: this.headers);
    return this.responseHandler(response);
  }

  Future<Map<String, dynamic>> post(String url,
      {Map<String, String> body}) async {
    final http.Response response =
        await http.post(apiUrl + url, body: body, headers: this.headers);
    return this.responseHandler(response);
  }

  Future<Map<String, dynamic>> put(String url,
      {Map<String, String> body}) async {
    final http.Response response =
        await http.put(apiUrl + url, body: body, headers: this.headers);
    return this.responseHandler(response);
  }

  Future<Map<String, dynamic>> delete(String url,
      {Map<String, String> body}) async {
    final http.Response response =
        await http.delete(apiUrl + url, headers: this.headers);
    return this.responseHandler(response);
  }
}
