import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_website/landing_screen/landing_viewmodel.dart';
import 'package:my_website/resource.dart';
import 'package:my_website/widgets/about_me.dart';
import 'package:my_website/widgets/components.dart';

class HomeScreen extends StatefulWidget {
  static const screenId = '/HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<LandingScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _buildBody(),
            _titleBar(),
          ],
        ),
      ),
    );
  }

  Widget _titleBar() {
    return Container(
      width: double.infinity,
      height: kToolbarHeight,
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
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
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: Theme.of(context).colorScheme.inverseSurface,
                onPressed: () => controller.toggleTheme(),
                icon: Icon(controller.isDarkMode.isTrue
                    ? CupertinoIcons.brightness_solid
                    : CupertinoIcons.brightness),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [_introWidget(), const AboutMeWidget()],
        ),
      ),
    );
  }

  Widget _introWidget() {
    return Stack(
      children: [
        Image.asset(
            width: context.width,
            height: context.height,
            ImagePath.background,
            fit: BoxFit.contain),
        Container(
          height: context.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height / 4),
              Text(
                'Gowsik Raja',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.height / 12),
              Text(
                'consectetur adipiscing elit. Praesent imperdiet ante tortor, '
                '\nsit amet mollis erat placerat suscipit. ',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: const Color(0xff8B949E)),
              ),
              const Spacer(),
              Components.trackingLine(ImagePath.aboutLineEnd, leftPadding: 20),
            ],
          ),
        ),
      ],
    );
  }
}
