import 'package:real_estate_app/controller/requriment_controller.dart';
import 'package:real_estate_app/util/config.dart';

class RequirementScreen extends StatelessWidget {
  const RequirementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Requirement',
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: GetBuilder<RequrimentController>(
          init: RequrimentController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Wrap(
                children: [
                  TextField(
                    controller: controller.title,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Title'),
                  ),
                  TextField(
                    controller: controller.name,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Name'),
                  ),
                  TextField(
                    controller: controller.phoneNo,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Phone'),
                  ),
                  TextField(
                    controller: controller.email,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Email'),
                  ),
                  TextField(
                    controller: controller.description,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Description'),
                  ),
                  TextField(
                    controller: controller.postType,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Post Type'),
                  ),
                  TextField(
                    controller: controller.location,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Location'),
                  ),
                  TextField(
                    controller: controller.amount,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Amount'),
                  ),
                  Visibility(child: Container()),
                  ElevatedButton(
                      onPressed: () {
                        controller.selectImage();
                      },
                      child: const Text('Select Image')),
                  ElevatedButton(onPressed: () {}, child: const Text('Submit')),
                ],
              ),
            );
          }),
    );
  }
}
