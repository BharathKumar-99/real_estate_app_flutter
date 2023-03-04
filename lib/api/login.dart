import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/model/login_response.dart';

import '../model/signup_response.dart';
import '../util/api_request.dart';

class LoginApi {
  static final DioClient _dio = DioClient();
  static Dio dio = _dio.dio;

  static login(String email, String password) async {
    try {
      var formData = FormData.fromMap(
          {Constants.email: email, Constants.password: password});
      var response = await dio.post(Constants.login, data: formData);
      var resData = LoginResponse.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static forgotPassword(String email) async {
    try {
      var formData = FormData.fromMap({Constants.email: email});
      var response = await dio.post(Constants.forgotPassword, data: formData);
      var resData = LoginResponse.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static register(String firstName, String lastName, String fullName,
      String userName, String userType, String password, String email) async {
    try {
      var formData = FormData.fromMap({
        Constants.email: email,
        Constants.firstName: firstName,
        Constants.lastName: lastName,
        Constants.fullName: fullName,
        Constants.userName: userName,
        Constants.userType: userType,
        Constants.password: password
      });
      var response = await dio.post(Constants.register, data: formData);
      var resData = UserSignUp.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
