import 'package:bottom_navigation_bar_demo/ContreollerTab/ScreenController.dart';
import 'package:bottom_navigation_bar_demo/ContreollerTab/SecondScreenController.dart';
import 'package:bottom_navigation_bar_demo/ContreollerTab/ThirdScreenController.dart';
import 'package:get/get.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenController());
    Get.lazyPut(() => SecondScreenController());
    Get.lazyPut(() => ThirdScreenController());
    // TODO: implement dependencies
  }
}
