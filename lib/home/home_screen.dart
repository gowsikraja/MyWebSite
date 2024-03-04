import 'package:flutter/material.dart';
import 'package:my_website/infrastucture/app_colors.dart';
import 'package:my_website/resource.dart';
import 'package:my_website/utils/app_extentions.dart';

class HomeScreen extends StatefulWidget {
  static const screenId = '/HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _background(),
            Positioned(
                top: context.screenSize.height/3,
                left: context.screenSize.width/6,
                // right: 32,
                child: _buildBody())
          ],
        ),
      ),
    );
  }

  Widget _background() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: kToolbarHeight,
          margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
          decoration: BoxDecoration(
            color: AppColors.secoundary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Gowsik Raja"),
            ),
            centerTitle: false,
            actions: [
              TextButton(onPressed: () {}, child: const Text('About')),
              const SizedBox(width: 40),
              TextButton(onPressed: () {}, child: const Text('Works')),
              const SizedBox(width: 40),
              TextButton(onPressed: () {}, child: const Text('Contact')),
              const SizedBox(width: 40),
              // Obx(
              //       () => Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: IconButton(
              //       color: Theme.of(context).colorScheme.inverseSurface,
              //       onPressed: _changeTheme,
              //       icon: Icon(controller.isDarkMode.isTrue
              //           ? CupertinoIcons.brightness_solid
              //           : CupertinoIcons.brightness),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Flexible(
          child: Image.asset(
              width: context.screenSize.width,
              ImagePath.background,
              fit: BoxFit.contain),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gowsik Raja',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
