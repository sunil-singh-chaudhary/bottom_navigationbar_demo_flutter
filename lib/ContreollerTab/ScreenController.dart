import 'package:get/get.dart';

class ScreenController extends GetxController {
  var currentIndex = 0.obs;

  void changeindex(var indx) {
    currentIndex.value = indx;
  }
}
