class User {
  String id;
  String name;

  User({id, name});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
