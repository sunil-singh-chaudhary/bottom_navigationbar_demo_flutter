import 'package:bottom_navigation_bar_demo/Screens/FirstSecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Center(
        child: ElevatedButton(
          child: Text("Next"),
          onPressed: () {
            Get.to(FirstSecondScreen());
          },
        ),
      ),
    );
  }
}
