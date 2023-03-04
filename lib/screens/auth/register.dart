import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/controller/register_controller.dart';
import 'package:real_estate_app/util/routes/index.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: GetBuilder<RegisterController>(
            init: RegisterController(),
            builder: (controller) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Wrap(runSpacing: 20, children: [
                        Text(
                          'Create Account',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        TextField(
                          controller: controller.firstName,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'First Name',
                          ),
                        ),
                        TextField(
                          controller: controller.lastName,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'Last Name',
                          ),
                        ),
                        TextField(
                          controller: controller.userName,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                          ),
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
                        GestureDetector(
                          onTap: () => controller.changeType(),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(6)), //here
                            ),
                            child: Text(controller.type),
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
                        TextField(
                          controller: controller.confirmPassword,
                          obscureText: controller.isConfirmObscure.value,
                          decoration: InputDecoration(
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.changeConfirmVisible();
                                },
                                icon: !controller.isConfirmObscure.value
                                    ? const Icon(EvaIcons.eye)
                                    : const Icon(EvaIcons.eyeOff2)),
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(),
                            labelText: 'Confirm Password',
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  controller.register();
                                },
                                child: const Text(
                                  'Signup',
                                ))),
                        Center(
                          child: GestureDetector(
                              onTap: () {
                                Get.toNamed(routeName.login);
                              },
                              child: const Text(
                                  "Already have an Account? Log In")),
                        )
                      ]),
              );
            }),
      ),
    );
  }
}
