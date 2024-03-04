import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_website/home/home_screen.dart';
import 'package:my_website/infrastucture/app_colors.dart';
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
        initialRoute: HomeScreen.screenId,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.white, brightness: Brightness.light),
            useMaterial3: true,
            fontFamily: 'Poppins'),
        darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.black, brightness: Brightness.dark,
            background: AppColors.background
            ),
            useMaterial3: true,
            fontFamily: 'Poppins'),
        themeMode:
            controller.isDarkMode.isTrue ? ThemeMode.dark : ThemeMode.light,
        routes: {
          LandingScreen.screenId: (_) => LandingScreen(),
          HomeScreen.screenId: (_) => const HomeScreen()
        },
      );
    });
    /* return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gowsik Raja',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.blueGrey, primaryColorDark: Colors.deepOrange),
      initialRoute: LandingScreen.screenId,
      getPages: [
        GetPage(name: LandingScreen.screenId, page: () => LandingScreen()),
      ],
    );*/
  }
}
//   // themeMode:
//         //     controller.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
//         // theme: ThemeData(primarySwatch: Colors.blue),
//         // darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
//         // theme: ThemeData(
//         //     colorScheme: ColorScheme.fromSeed(
//         //         seedColor: Colors.indigoAccent, brightness: Brightness.light),
//         //     useMaterial3: true,
//         //     fontFamily: 'Poppins'),
//         // theme: ThemeData(
//         //     colorScheme: ColorScheme.fromSeed(
//         //         seedColor: Colors.blueGrey, brightness: Brightness.dark),
//         //     useMaterial3: true,
//         //     fontFamily: 'Poppins'),
