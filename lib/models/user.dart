import 'dart:convert';

class User {
  String id;
  String name;

  User({id, name});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
  }

  User.fromStorage(String userStorage) {
    if (userStorage.isNotEmpty) {
      var userDecoded = jsonDecode(userStorage);
      this.id = userDecoded['id'].toString();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['id'] = this.id;
    json['name'] = this.name;
    return json;
  }
}
