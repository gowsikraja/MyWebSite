import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_website/home/home_controller.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RiveAnimationController? _controller;
  Artboard? _artboard;

  @override
  void initState() {
    super.initState();
    rootBundle
        .load('assets/animation/light_to_dark_mode_switch.riv')
        .then((data) {
      final file = RiveFile.import(data);
      var artBoard = file.mainArtboard;
      _controller = _getController();
      artBoard.addController(_controller!);
      setState(() {
        _artboard = artBoard;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
          title: const Text('Welcome !'),
          actions: [
            GestureDetector(
              onTap: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                _artboard?.addController(_getController());
              },
              child: SizedBox(
                  width: 100,
                  height: 50,
                  child: _artboard != null ? Rive(artboard: _artboard!) : null),
            )
          ],
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
          },
          child: const Icon(Icons.add_rounded)),
      body: Column(
        children: [
          Center(
            child: Obx(() => Text('Count ${controller.count}')),
          ),
        ],
      ),
    );
  }

  RiveAnimationController _getController() {
    return SimpleAnimation(Get.isDarkMode ? 'ltr' : 'rtl');
  }
}
