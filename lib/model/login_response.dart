class LoginResponse {
  bool? error;
  String? message;
  String? token;
  Data? data;

  LoginResponse({this.error, this.message, this.token, this.data});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    token = json['token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    data['token'] = token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? firstName;
  String? fullName;
  String? lastName;
  String? username;
  String? description;
  String? gender;
  String? email;
  String? userType;
  int? avatarId;
  String? dob;
  String? phone;
  int? createdBy;
  String? createdbyType;
  int? credits;
  String? confirmedAt;
  String? emailVerifyToken;
  int? isFeatured;
  String? createdAt;
  String? updatedAt;
  String? whatsappno;
  String? youtubelink;
  String? facebooklink;
  String? apiToken;

  Data(
      {this.id,
      this.firstName,
      this.fullName,
      this.lastName,
      this.username,
      this.description,
      this.gender,
      this.email,
      this.userType,
      this.avatarId,
      this.dob,
      this.phone,
      this.createdBy,
      this.createdbyType,
      this.credits,
      this.confirmedAt,
      this.emailVerifyToken,
      this.isFeatured,
      this.createdAt,
      this.updatedAt,
      this.whatsappno,
      this.youtubelink,
      this.facebooklink,
      this.apiToken});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    fullName = json['full_name'];
    lastName = json['last_name'];
    username = json['username'];
    description = json['description'];
    gender = json['gender'];
    email = json['email'];
    userType = json['user_type'];
    avatarId = json['avatar_id'];
    dob = json['dob'];
    phone = json['phone'];
    createdBy = json['created_by'];
    createdbyType = json['createdby_type'];
    credits = json['credits'];
    confirmedAt = json['confirmed_at'];
    emailVerifyToken = json['email_verify_token'];
    isFeatured = json['is_featured'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    whatsappno = json['whatsappno'];
    youtubelink = json['youtubelink'];
    facebooklink = json['facebooklink'];
    apiToken = json['api_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['full_name'] = fullName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['description'] = description;
    data['gender'] = gender;
    data['email'] = email;
    data['user_type'] = userType;
    data['avatar_id'] = avatarId;
    data['dob'] = dob;
    data['phone'] = phone;
    data['created_by'] = createdBy;
    data['createdby_type'] = createdbyType;
    data['credits'] = credits;
    data['confirmed_at'] = confirmedAt;
    data['email_verify_token'] = emailVerifyToken;
    data['is_featured'] = isFeatured;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['whatsappno'] = whatsappno;
    data['youtubelink'] = youtubelink;
    data['facebooklink'] = facebooklink;
    data['api_token'] = apiToken;
    return data;
  }
}
