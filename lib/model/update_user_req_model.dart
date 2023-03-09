class UpdateUserReqModel {
  String? dob;
  String? email;
  String? facebookLink;
  String? firstName;
  String? fullName;
  String? lastName;
  String? phone;
  String? username;
  String? whatsAppNo;
  String? youtubeLink;

  UpdateUserReqModel(
      {this.dob,
      this.email,
      this.facebookLink,
      this.firstName,
      this.fullName,
      this.lastName,
      this.phone,
      this.username,
      this.whatsAppNo,
      this.youtubeLink});

  UpdateUserReqModel.fromJson(Map<String, dynamic> json) {
    dob = json['dob'];
    email = json['email'];
    facebookLink = json['facebook_link'];
    firstName = json['first_name'];
    fullName = json['full_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    username = json['username'];
    whatsAppNo = json['whats_app_no'];
    youtubeLink = json['youtube_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dob'] = dob;
    data['email'] = email;
    data['facebook_link'] = facebookLink;
    data['first_name'] = firstName;
    data['full_name'] = fullName;
    data['last_name'] = lastName;
    data['phone'] = phone;
    data['username'] = username;
    data['whats_app_no'] = whatsAppNo;
    data['youtube_link'] = youtubeLink;
    return data;
  }
}
