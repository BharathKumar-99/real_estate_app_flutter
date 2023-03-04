import 'package:real_estate_app/screens/bottom_navigation/util/bottom_navigation_widget.dart';

import '../../controller/app_controller.dart';
import '../../util/config.dart';
import 'util/bottom_navigation_constants.dart';

class IosBottomNavigationBar extends StatelessWidget {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final int? selectedIndex;
  final ValueChanged<int>? onTap;

  IosBottomNavigationBar({Key? key, this.onTap, this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Offstage(
        offstage: selectedIndex == 4 ? true : false,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: BottomNavigationFontSize().textSizeSmall,
          selectedLabelStyle: TextStyle(
              fontSize: BottomNavigationFontSize().textSizeSmall,
              fontWeight:
                  selectedIndex == 0 ? FontWeight.w800 : FontWeight.normal),
          items: <BottomNavigationBarItem>[
            ...appCtrl.bottomNavigationList.asMap().entries.map((e) {
              return BottomNavigationWidget().bottomNavigationCard(
                  color: Theme.of(context).colorScheme.primary,
                  text: e.value['title'],
                  imageIcon: e.value['icon'],
                  imagecolor: selectedIndex == e.key
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.onPrimary.withOpacity(.8),
                  height: 20,
                  width: 20);
            }).toList(),
          ],
          currentIndex: selectedIndex!,
          onTap: onTap,
        ),
      );
    });
  }
}
