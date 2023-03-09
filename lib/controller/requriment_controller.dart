import 'package:real_estate_app/util/config.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class RequrimentController extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController postType = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController amount = TextEditingController();
  late PermissionStatus _permissionStatus;
  late final XFile? image;
  final ImagePicker _picker = ImagePicker();

  @override
  onInit() {
    super.onInit();
    () async {
      _permissionStatus = await Permission.storage.status;
      if (_permissionStatus != PermissionStatus.granted) {
        PermissionStatus permissionStatus = await Permission.storage.request();
        _permissionStatus = permissionStatus;
      }
    }();
  }

  selectImage() async {
    image = await _picker.pickImage(source: ImageSource.gallery);
  }
}
