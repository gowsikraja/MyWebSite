import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_website/infrastucture/constance.dart';
import 'package:my_website/landing_screen/landing_viewmodel.dart';
import 'package:my_website/resource.dart';
import 'package:my_website/utils/app_extentions.dart';
import 'package:rive/rive.dart';

class LandingScreen extends StatelessWidget {
  static const screenId = '/LandingScreen';

  LandingScreen({super.key});

  // final controller = Get.put(LandingScreenController());
  final controller = Get.find<LandingScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Stack(
        children: [
          _background(context),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _body(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        '<Gowsik Raja/>',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      titleSpacing: 200,
      actions: [
        TextButton(onPressed: () {}, child: const Text('About')),
        const SizedBox(width: 40),
        TextButton(onPressed: () {}, child: const Text('Works')),
        const SizedBox(width: 40),
        TextButton(onPressed: () {}, child: const Text('Contact')),
        const SizedBox(width: 40),
        Obx(
          () => Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: Theme.of(context).colorScheme.inverseSurface,
              onPressed: _changeTheme,
              icon: Icon(controller.isDarkMode.isTrue
                  ? CupertinoIcons.brightness_solid
                  : CupertinoIcons.brightness),
            ),
          ),
        ),
      ],
    );
  }

  Widget _background(BuildContext context) {
    return Opacity(
      opacity: 0.1,
      child: SizedBox(
        width: context.screenSize.width,
        height: context.screenSize.height,
        child: RiveAnimation.asset(
          controller.isDarkMode.isTrue
              ? AnimFilePath.darkModeBackGround
              : AnimFilePath.lightModeBackGround,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        _aboutWidget(context),
      ],
    );
  }

  Widget _aboutWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 3,
            child: _aboutMe(context)),
        Expanded(
            flex: 2,
            child: _profile(context)),
      ],
    );
  }

  Widget _aboutMe(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'About Me',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 36),
          Text(
            Constance.aboutMeName,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  letterSpacing: 1.5,
                  wordSpacing: 1.5,
                ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 36),
          Text(
            Constance.aboutMeContent,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  letterSpacing: 1.5,
                  wordSpacing: 1.5,
                ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 40),
          Text(
            Constance.aboutQuote,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.5,
                  wordSpacing: 1.5,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _profile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const CircleAvatar(
        minRadius: 100,
        // maxRadius: 200,
        child: Text('Photo'),
      ),
    );
  }

  void _changeTheme() {
    controller.toggleTheme();
  }
}
