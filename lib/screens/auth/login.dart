import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/controller/login_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:real_estate_app/util/routes/index.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Wrap(
                      runSpacing: 40,
                      children: [
                        Text(
                          'Welcome Back',
                          style: Theme.of(context).textTheme.displayLarge,
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
                        TextField(
                          controller: controller.password,
                          obscureText: controller.isObscure.value,
                          decoration: InputDecoration(
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.changeVisible();
                                },
                                icon: !controller.isObscure.value
                                    ? const Icon(EvaIcons.eye)
                                    : const Icon(EvaIcons.eyeOff2)),
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(routeName.forgotPassword);
                              },
                              child: Text(
                                'Forgot Password?',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            )),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  controller.login();
                                },
                                child: const Text(
                                  'Login',
                                ))),
                        Container(
                          height: 2,
                          color: Colors.grey,
                        ),
                        Center(
                          child: GestureDetector(
                              onTap: () {
                                Get.toNamed(routeName.signup);
                              },
                              child: const Text(
                                  "Don't Have An Account ? Register Now")),
                        )
                      ],
                    ),
            );
          }),
    );
  }
}
