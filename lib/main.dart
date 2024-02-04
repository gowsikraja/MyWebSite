import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_website/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gowsik Raja',
      themeMode: ThemeMode.system,
      // theme: ThemeData(primarySwatch: Colors.blue),
      // darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
//final isLight = SchedulerBinding.instance?.window.platformBrightness == Brightness.light;