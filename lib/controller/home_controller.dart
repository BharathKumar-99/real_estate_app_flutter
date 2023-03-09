import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/model/categories_model.dart';
import 'package:real_estate_app/util/config.dart';

import '../api/home_api.dart';
import '../model/properties_list.dart';

class HomeController extends GetxController {
  TextEditingController? name = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? phone = TextEditingController();
  TextEditingController? enquiryType = TextEditingController();
  TextEditingController? messages = TextEditingController();
  List<CategoriesModel>? propertiesModel = [];
  PropertiesList featuredList = PropertiesList();
  PropertiesList rentProperties = PropertiesList();
  PropertiesList saleProperties = PropertiesList();
  RxBool isLoading = true.obs;
  @override
  onInit() {
    super.onInit();
    getPropertiesType();
    getFeaturedType();
    getRentType();
    getSaleType();
    isLoading.value = false;
    update();
  }

  getPropertiesType() async {
    propertiesModel = await HomeApi.getProperties();
    update();
  }

  getFeaturedType() async {
    featuredList = await HomeApi.getFeatured();
    update();
  }

  getRentType() async {
    rentProperties = await HomeApi.getRent();
    update();
  }

  getSaleType() async {
    saleProperties = await HomeApi.getSale();
    update();
  }

  contactUs() async {
    if (name?.text.toString().trim() == null) {
      showError('Enter All Fields');
      return;
    } else if (email?.text.toString().trim() == null) {
      showError('Enter All Fields');
      return;
    } else if (phone?.text.toString().trim() == null) {
      showError('Enter All Fields');
      return;
    } else if (enquiryType?.text.toString().trim() == null) {
      showError('Enter All Fields');
      return;
    } else if (messages?.text.toString().trim() == null) {
      showError('Enter All Fields');
      return;
    } else {
      await HomeApi.contactUs(
              name!.text.toString().trim(),
              phone!.text.toString().trim(),
              enquiryType!.text.toString().trim(),
              email!.text.toString().trim(),
              messages!.text.toString().trim())
          .then((val) {
        Get.snackbar('success', val.message,
            snackPosition: SnackPosition.BOTTOM);
        name?.clear();
        phone?.clear();
        email?.clear();
        enquiryType?.clear();
        messages?.clear();
      });
    }
  }

  showError(String message) {
    Get.snackbar(Constants.error, message);
  }
}
