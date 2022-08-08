import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  var currentIndex = 0.obs;

  void changesecond(var indx) {
    currentIndex.value = indx;
  }
}
