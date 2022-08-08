import 'package:bottom_navigation_bar_demo/ContreollerTab/ScreenController.dart';
import 'package:bottom_navigation_bar_demo/Screens/FirstTabScreen.dart';
import 'package:bottom_navigation_bar_demo/Screens/SecondTabScreen.dart';
import 'package:bottom_navigation_bar_demo/Screens/ThirdTabScreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleNavigaitonbar extends StatelessWidget {
  SimpleNavigaitonbar({super.key});
  final Screens = [FirstTabScreen(), SecondTabScreen(), ThirdTabScreen()];
  var controller = Get.put(ScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => IndexedStack(
          index: controller.currentIndex.value, children: Screens)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            )
          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: controller.currentIndex.value,
          onTap: (index) => {controller.changeindex(index)},
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
