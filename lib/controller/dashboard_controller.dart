import 'package:get/get.dart';
import 'package:real_estate_app/controller/app_controller.dart';

import '../util/preferences.dart';

class DashboardController extends GetxController {
  int selectedIndex = 0;
  var appCtrl = Get.put(AppController());
  bool isLoading = false;

  //botton change
  bottomNavigationChange(val) async {
    appCtrl.update();

    await StroageUtil().saveInt('selectedIndex', appCtrl.selectedIndex);
    appCtrl.selectedIndex = val;
    appCtrl.update();

    appCtrl.update();
    update();
  }
}
