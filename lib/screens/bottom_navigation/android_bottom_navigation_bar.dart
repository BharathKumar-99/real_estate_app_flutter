import 'package:real_estate_app/screens/bottom_navigation/util/bottom_navigation_constants.dart';
import 'package:real_estate_app/screens/bottom_navigation/util/bottom_navigation_widget.dart';

import '../../controller/app_controller.dart';
import '../../util/config.dart';

class AndroidBottomNavigationBar extends StatelessWidget {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final int? selectedIndex;
  final ValueChanged<int>? onTap;

  AndroidBottomNavigationBar({
    Key? key,
    this.selectedIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: BottomNavigationFontSize().textSizeSmall,
        selectedLabelStyle: TextStyle(
            fontSize: BottomNavigationFontSize().textSizeSmall,
            fontWeight: FontWeight.bold),
        items: [
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
      );
    });
  }
}
