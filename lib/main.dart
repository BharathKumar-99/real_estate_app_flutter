import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/screens/splashscreen/splash_screen.dart';
import 'package:real_estate_app/util/routes/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Real Estate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white, unselectedItemColor: Colors.grey),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 31, 64, 97),
              elevation: 0,
              textStyle: GoogleFonts.arima(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          textTheme: TextTheme(
              headlineSmall:
                  GoogleFonts.roboto(fontSize: 20, color: Colors.black),
              headlineMedium: GoogleFonts.rowdies(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              displaySmall:
                  GoogleFonts.arima(fontSize: 19, color: Colors.black),
              displayLarge:
                  GoogleFonts.lobsterTwo(fontSize: 35, color: Colors.black)),
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.yellow.shade800,
              onPrimary: Colors.white,
              secondary: const Color.fromARGB(255, 31, 64, 97),
              onSecondary: Colors.black,
              error: Colors.redAccent,
              onError: Colors.white,
              background: Colors.white,
              onBackground: Colors.black,
              surface: Colors.grey.shade300,
              onSurface: Colors.black54)),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const SplashScreen(),
      getPages: appRoutes.getPages,
    );
  }
}
