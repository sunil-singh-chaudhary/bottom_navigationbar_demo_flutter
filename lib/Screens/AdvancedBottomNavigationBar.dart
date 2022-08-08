import 'package:bottom_navigation_bar_demo/ContreollerTab/ScreenController.dart';
import 'package:bottom_navigation_bar_demo/Screens/FirstTabScreen.dart';
import 'package:bottom_navigation_bar_demo/Screens/SecondTabScreen.dart';
import 'package:bottom_navigation_bar_demo/Screens/ThirdTabScreen.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvanceBottomNavigationbar extends StatelessWidget {
  AdvanceBottomNavigationbar({super.key});
  final Screens = [const FirstTabScreen(), SecondTabScreen(), ThirdTabScreen()];
  var controller = Get.put(ScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => IndexedStack(
          index: controller.currentIndex.value, children: Screens)),

      //Using libraray CustomNavigationbar import it and keep bottombar  in bottom when pages continiously changes
      bottomNavigationBar: Obx(() => CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: const Color(0xff040307),
            strokeColor: const Color(0x30040307),
            unSelectedColor: const Color(0xffacacac),
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.person),
                title: const Text("JAI"),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.settings),
                title: const Text("Settings"),
              ),
            ],
            currentIndex: controller.currentIndex.value,
            onTap: (index) => {controller.changeindex(index)},
          )),
    );
  }
}
