import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_website/resource.dart';
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
    rootBundle.load(AnimFilePath.themeModeButton).then((data) {
      final file = RiveFile.import(data);
      var artBoard = file.mainArtboard;
      _controller = _getController(Get.isDarkMode);
      artBoard.addController(_controller!);
      setState(() {
        _artboard = artBoard;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final HomeController controller = Get.put(HomeController());
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Coming Soooon !'),
          actions: [
            GestureDetector(
              onTap: _changeTheme,
              child: SizedBox(
                  width: 80,
                  height: 40,
                  child: _artboard != null ? Rive(artboard: _artboard!) : null),
            )
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.add_rounded)),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: RiveAnimation.asset(
                Get.isDarkMode
                    ? AnimFilePath.darkModeBackGround
                    : AnimFilePath.lightModeBackGround,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _changeTheme() {
    Get.changeTheme(
      Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
    );
    Future.delayed(const Duration(milliseconds: 200), () {
      _artboard?.addController(_getController(Get.isDarkMode));
    });
  }

  RiveAnimationController _getController(bool isDark) {
    return SimpleAnimation(isDark ? 'rtl' : 'ltr');
  }
}
