import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/controllers/NavigationController.dart';
import 'package:responsive_studies/controllers/ScreenSizeController.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  final NavigationHomeController navigationController = Get.put(NavigationHomeController());
  final ScreenSizeController screenSizeController = Get.put(ScreenSizeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Text(screenSizeController.isMobile() ? "Mobile" : "Desktop"),
        ),
      ),
    );
  }
}
