import 'package:get/get.dart';
import 'package:real_estate_app/util/routes/index.dart';

import '../constants/constants.dart';
import '../util/preferences.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 500), () async {
      var token = await getToken();
      if (token == null) {
        Get.offAllNamed(routeName.login);
      } else {
        Get.offAllNamed(routeName.dashboard);
      }
    });
    super.onInit();
  }

  getToken() async {
    var object = await StroageUtil().getString(Constants.token);
    print(object);
    return object;
  }
}
