import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/model/login_response.dart';
import 'package:real_estate_app/model/update_account_response.dart';

import '../constants/constants.dart';
import '../model/update_user_req_model.dart';
import '../util/api_request.dart';

class ProfileApi {
  static final DioClient _dio = DioClient();
  static Dio dio = _dio.dio;

  changePassword(String oldPassword, String newPassword) async {
    try {
      var formData = FormData.fromMap({
        Constants.reqCurrentPassword: oldPassword,
        Constants.reqNewPassword: newPassword,
      });
      var response = await dio.post(Constants.updatePassword, data: formData);
      var resData = LoginResponse.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static updateAccount(UpdateUserReqModel model) async {
    try {
      var response =
          await dio.post(Constants.updateAccount, data: model.toJson());
      var resData = UpdateUserResponse.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
