import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/api/login.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/model/login_response.dart';
import 'package:real_estate_app/util/preferences.dart';
import 'package:real_estate_app/util/routes/index.dart';

class LoginController extends GetxController {
  TextEditingController? email = TextEditingController();
  TextEditingController? password = TextEditingController();
  RxBool isObscure = false.obs;
  RxBool isLoading = false.obs;

  changeVisible() {
    isObscure.value = !isObscure.value;
    update();
  }

  login() async {
    isLoading.value = true;
    update();
    if (email?.text.toString().trim() == null &&
        password?.text.toString() == null) {
      return;
    } else {
      await LoginApi.login(
              email!.text.toString().trim(), password!.text.toString().trim())
          .then((val) {
        if (!val.error!) {
          saveAndRedirect(val);
          saveToken(val.token!);
          redirectToHome();
        } else {
          Get.snackbar('Error', val.message ?? 'Something went wrong');
        }
      });
    }
    isLoading.value = false;
    update();
  }

  saveAndRedirect(LoginResponse loginResponse) async {
    Data user = loginResponse.data ?? Data();
    await StroageUtil().saveString(Constants.user, jsonEncode(user.toJson()));
  }

  saveToken(String token) async {
    await StroageUtil().saveString(Constants.token, token);
  }

  redirectToHome() {
    Get.toNamed(routeName.dashboard);
  }

  forgotPassword() async {
    isLoading.value = true;
    update();
    if (email?.text.toString().trim() != null) {
      await LoginApi.forgotPassword(email!.text.toString().trim()).then((val) {
        Get.snackbar('Message', val.message);
      });
    }
    isLoading.value = false;
    update();
  }
}
