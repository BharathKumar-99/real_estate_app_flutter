import 'package:get/get.dart';
import 'package:real_estate_app/util/routes/index.dart';

import '../constants/constants.dart';
import '../util/preferences.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (getToken() == null) {
        Get.toNamed(routeName.login);
      } else {
        Get.toNamed(routeName.dashboard);
      }
    });
    super.onInit();
  }

  getToken() async {
    await StroageUtil().getString(Constants.token);
  }
}
