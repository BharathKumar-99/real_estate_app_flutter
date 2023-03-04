class UserSignUp {
  bool? error;
  String? message;
  User? user;

  UserSignUp({this.error, this.message, this.user});

  UserSignUp.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  String? firstName;
  String? fullName;
  String? lastName;
  String? username;
  String? email;
  String? userType;
  String? updatedAt;
  String? createdAt;
  int? id;

  User(
      {this.firstName,
      this.fullName,
      this.lastName,
      this.username,
      this.email,
      this.userType,
      this.updatedAt,
      this.createdAt,
      this.id});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    fullName = json['full_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    userType = json['user_type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['full_name'] = fullName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['email'] = email;
    data['user_type'] = userType;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
