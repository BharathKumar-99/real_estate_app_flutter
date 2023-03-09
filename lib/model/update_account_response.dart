class UpdateUserResponse {
  bool? error;
  String? message;
  int? user;

  UpdateUserResponse({this.error, this.message, this.user});

  UpdateUserResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    data['user'] = user;
    return data;
  }
}
