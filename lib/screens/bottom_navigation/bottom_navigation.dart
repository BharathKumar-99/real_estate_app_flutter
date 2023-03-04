import 'dart:io' show Platform;

import '../../controller/app_controller.dart';
import '../../util/config.dart';
import 'android_bottom_navigation_bar.dart';
import 'ios_bottom_navigation_bar.dart';

class BottomNavigatorCard extends StatelessWidget {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final int? selectedIndex;
  final ValueChanged<int>? onTap;

  BottomNavigatorCard({
    Key? key,
    this.selectedIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (_) => Platform.isIOS
          ? IosBottomNavigationBar(
              selectedIndex: selectedIndex,
              onTap: onTap,
            )
          : AndroidBottomNavigationBar(
              selectedIndex: selectedIndex,
              onTap: onTap,
            ),
    );
  }
}
