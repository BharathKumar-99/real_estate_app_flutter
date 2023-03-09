import 'package:real_estate_app/controller/profile_controller.dart';
import 'package:real_estate_app/util/config.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                runSpacing: 8,
                children: [
                  const Text('First name'),
                  TextField(
                    controller: controller.firstName,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'First Name'),
                  ),
                  const Text('Last name'),
                  TextField(
                    controller: controller.lastName,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Last Name'),
                  ),
                  const Text('Full name'),
                  TextField(
                    controller: controller.fullName,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Full Name'),
                  ),
                  const Text('User name'),
                  TextField(
                    controller: controller.username,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'User Name'),
                  ),
                  const Text('Email'),
                  TextField(
                    controller: controller.emailT,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Email'),
                  ),
                  const Text('WhatsApp Number'),
                  TextField(
                    controller: controller.whatsAppName,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'WhatsApp Number'),
                  ),
                  const Text('Phone'),
                  TextField(
                    controller: controller.firstName,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Phone'),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.updateUser();
                          Get.back();
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).colorScheme.secondary)),
                        child: const Text('Update'),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
