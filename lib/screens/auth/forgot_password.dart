import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:real_estate_app/controller/login_controller.dart';
import 'package:real_estate_app/util/config.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Wrap(
                      runSpacing: 40,
                      children: [
                        IconButton(
                            onPressed: () => Get.back(),
                            icon: const Icon(EvaIcons.arrowIosBack)),
                        Text(
                          'Forgot Password',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          'Please enter the email address linked with your account',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        TextField(
                          controller: controller.email,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Theme.of(context)
                                            .colorScheme
                                            .secondary)),
                                onPressed: () {
                                  controller.forgotPassword();
                                },
                                child: const Text(
                                  'Forgot Password',
                                ))),
                        const Spacer(),
                        Center(
                          child: GestureDetector(
                              onTap: () {
                                Get.toNamed(routeName.login);
                              },
                              child: const Text('Remember password? log in')),
                        )
                      ],
                    ),
            );
          }),
    );
  }
}
