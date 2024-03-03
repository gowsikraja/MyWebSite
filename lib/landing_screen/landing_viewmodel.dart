import 'package:get/get.dart';

class LandingScreenController extends GetxController {
  var isDarkMode = true.obs;

  void toggleTheme() {
    isDarkMode.toggle();
    update();
  }
}
