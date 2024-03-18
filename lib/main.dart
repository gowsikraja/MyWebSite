import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_website/home/home_screen.dart';
import 'package:my_website/infrastucture/app_theme.dart';
import 'package:my_website/landing_screen/landing_screen.dart';
import 'package:my_website/landing_screen/landing_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controller = Get.put(LandingScreenController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetX<LandingScreenController>(builder: (_) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gowsik Raja',
        theme: AppTheme.lite,
        darkTheme: AppTheme.dark,
        themeMode:
            controller.isDarkMode.isTrue ? ThemeMode.dark : ThemeMode.light,
        routes: {
          LandingScreen.screenId: (_) => LandingScreen(),
          HomeScreen.screenId: (_) => const HomeScreen()
        },
        initialRoute: HomeScreen.screenId,
      );
    });
  }
}
