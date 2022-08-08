import 'package:get/get.dart';

class ThirdScreenController extends GetxController {
  var currentIndex = 0.obs;

  void changethird(var indx) {
    currentIndex.value = indx;
  }
}
