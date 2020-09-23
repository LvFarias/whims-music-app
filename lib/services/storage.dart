import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class WhStorage extends GetxService {
  final storage = new FlutterSecureStorage();

  void write(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String> getValue(String key) async {
    String value = await storage.read(key: key);
    return value;
  }

  Future<Map<String, String>> getAll() async {
    Map<String, String> allValues = await storage.readAll();
    return allValues;
  }

  void delete(String key) async {
    await storage.delete(key: key);
  }

  void deleteAll() async {
    await storage.deleteAll();
  }
}
