import 'package:real_estate_app/util/apparray.dart';
import 'package:real_estate_app/util/preferences.dart';
import '../constants/constants.dart';

import '../util/config.dart';

class AppController extends GetxController {
  List bottomNavigationList = [];
  int selectedIndex = 0;

  String? name;
  String? mobile;
  String? profile;
  bool? isUser;

  List<Widget> widgetOptions = <Widget>[
    const Home(),
    const Wishlist(),
    const Profile(),
  ];

  getData() {
    bottomNavigationList = AppArray().bottomNavigationList;
  }

  @override
  void onInit() {
    super.onInit();

    getData();
    update();
  }

  goToHome() async {
    await StroageUtil().saveInt(Constants.selectedIndex, 0);

    selectedIndex = 0;
    update();
  }
}
