import 'package:bottom_navigation_bar_demo/Navigator/SimpleNavigaitonbar.dart';
import 'package:bottom_navigation_bar_demo/Screens/AdvancedBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: DemoBottomNavigation(title: "DEMO"));
      home: SimpleNavigaitonbar(),
    );
  }
}
