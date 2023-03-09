import 'dart:convert';

import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/api/profile_api.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/model/update_user_req_model.dart';
import 'package:real_estate_app/util/general.dart';
import 'package:real_estate_app/util/preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/login_response.dart';
import '../util/config.dart';

class ProfileController extends GetxController {
  final Uri url = Uri.parse(Constants.privacyPolicy);
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController renterPassword = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController emailT = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController whatsAppName = TextEditingController();
  TextEditingController phone = TextEditingController();
  var email = '';
  var name = '';
  Data user = Data();

  @override
  onInit() {
    getProfile();

    update();
    super.onInit();
  }

  getProfile() async {
    var data = await StroageUtil().getString(Constants.user);
    user = Data.fromJson(jsonDecode(data));
    email = user.email ?? 'Email';
    name = user.fullName ?? 'Name';
    token = await StroageUtil().getString(Constants.token) ?? '';
    getEditProfile();
    update();
  }

  getEditProfile() {
    firstName.text = user.firstName ?? ' ';
    lastName.text = user.lastName ?? ' ';
    fullName.text = user.fullName ?? ' ';
    username.text = user.username ?? ' ';
    emailT.text = user.email ?? ' ';
    whatsAppName.text = user.whatsappno ?? ' ';
    phone.text = user.phone ?? ' ';
    update();
  }

  Future<void> launchInWebViewOrVC() async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  showChangePasswordDrawer() {
    Get.bottomSheet(
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            runSpacing: 25,
            alignment: WrapAlignment.center,
            children: [
              Text(
                'Change Password',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 25),
              ),
              TextField(
                controller: currentPassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Current Password',
                ),
              ),
              TextField(
                controller: newPassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                ),
              ),
              TextField(
                controller: renterPassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Renter Password',
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    changePassword();
                    Get.back();
                  },
                  child: const Text('Update Password'),
                ),
              )
            ],
          ),
        ),
      ),
      isDismissible: true,
    );
  }

  changePassword() async {
    if (currentPassword.text.toString().trim() ==
        newPassword.text.toString().trim()) {
      return Get.snackbar('error', 'New password can be current password');
    } else if (newPassword.text.toString().trim() !=
        renterPassword.text.toString().trim()) {
      return Get.snackbar('error', 'New password doesnt match');
    } else {
      await ProfileApi()
          .changePassword(currentPassword.text.toString().trim(),
              newPassword.text.toString().trim())
          .then((val) {
        Get.snackbar('', val.message);
      });
    }
  }

  updateUser() async {
    UpdateUserReqModel userReqModel = UpdateUserReqModel();
    userReqModel.email = emailT.text.toString().trim();
    userReqModel.fullName = fullName.text.toString().trim();
    userReqModel.username = username.text.toString().trim();
    userReqModel.whatsAppNo = whatsAppName.text.toString().trim();
    userReqModel.phone = phone.text.toString().trim();
    userReqModel.firstName = firstName.toString().trim();
    userReqModel.lastName = lastName.toString().trim();
    userReqModel.dob = '';
    userReqModel.facebookLink = '';
    userReqModel.youtubeLink = '';
    await ProfileApi.updateAccount(userReqModel).then((val) {
      Get.snackbar('', val.message);
    });
  }
}
