import '../../controller/dashboard_controller.dart';
import '../../util/config.dart';
import '../bottom_navigation/bottom_navigation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (ctl) => Scaffold(
        key: scaffoldKey,
        body: ctl.appCtrl.widgetOptions.elementAt(ctl.appCtrl.selectedIndex),
        bottomNavigationBar: BottomNavigatorCard(
          selectedIndex: ctl.appCtrl.selectedIndex,
          onTap: (val) => ctl.bottomNavigationChange(val),
        ),
      ),
    );
  }
}
