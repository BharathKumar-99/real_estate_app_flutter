import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/api/login.dart';
import 'package:real_estate_app/util/routes/index.dart';

class RegisterController extends GetxController {
  TextEditingController? firstName = TextEditingController();
  TextEditingController? lastName = TextEditingController();
  TextEditingController? userName = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? password = TextEditingController();
  TextEditingController? confirmPassword = TextEditingController();
  var _type = "Select Type";
  RxBool isObscure = false.obs;
  RxBool isConfirmObscure = false.obs;
  RxBool isLoading = false.obs;
  List items = ["User", "Developer"];
  changeVisible() {
    isObscure.value = !isObscure.value;
    update();
  }

  changeConfirmVisible() {
    isConfirmObscure.value = !isConfirmObscure.value;
    update();
  }

  set type(val) {
    _type = val;
    update();
    log(_type);
  }

  get type {
    return _type;
  }

  changeType() {
    Get.defaultDialog(
        title: 'Select Type',
        content: SizedBox(
          height: 300,
          width: 300,
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _type = items[index];
                    update();
                    Get.back();
                  },
                  child: ListTile(
                    title: Text(items[index],
                        style: Theme.of(context).textTheme.displaySmall),
                  ))),
        ));
  }

  register() async {
    isLoading.value = true;
    update();
    if (firstName?.text.toString().trim() == null) {
      showError('Please Enter First Name');
    }
    if (lastName?.text.toString().trim() == null) {
      showError('Please Enter Last Name');
    }
    if (userName?.text.toString().trim() == null) {
      showError('Please Enter User Name');
    }
    if (email?.text.toString().trim() == null) {
      showError('Please Enter Email');
    }
    if (password?.text.toString().trim() == null) {
      showError('Please Enter Password');
    }
    if (confirmPassword?.text.toString().trim() == null) {
      showError('Please Enter Confirm Password');
    }
    if (password?.text.toString().trim() !=
        confirmPassword?.text.toString().trim()) {
      showError('Passwords do not match');
    }
    if (_type == 'Select Type') {
      showError('Please select a User type');
    }
    LoginApi.register(
            firstName!.text.toString().trim(),
            lastName!.text.toString().trim(),
            lastName!.text.toString().trim(),
            userName!.text.toString().trim(),
            _type,
            password!.text.toString().trim(),
            email!.text.toString().trim())
        .then((val) {
      showMessage(val.message);
    });
    isLoading.value = false;
    update();
  }

  showError(String message) {
    Get.snackbar('Error', message);
  }

  showMessage(String message) {
    Get.snackbar("", message);
    Get.toNamed(routeName.login);
  }
}
