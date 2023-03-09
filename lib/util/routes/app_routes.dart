import 'package:real_estate_app/screens/profile/edit_profile.dart';
import 'package:real_estate_app/util/config.dart';
import 'app_routes_name.dart';

RouteName _routeName = RouteName();

class AppRoutes {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.splashScreen, page: () => const SplashScreen()),
    GetPage(name: _routeName.login, page: () => const Login()),
    GetPage(name: _routeName.signup, page: () => const Register()),
    GetPage(name: _routeName.dashboard, page: () => const Dashboard()),
    GetPage(name: _routeName.editProfile, page: () => const EditProfile()),
    GetPage(
        name: _routeName.forgotPassword, page: () => const ForgotPassword()),
  ];
}
