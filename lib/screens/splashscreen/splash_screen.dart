import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/controller/splash_screen_contoller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<SplashScreenController>(
          init: SplashScreenController(),
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            );
          }),
    );
  }
}
