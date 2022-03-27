import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/controllers/NavigationController.dart';
import 'package:responsive_studies/controllers/ScreenSizeController.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NavigationHomeController navigationController = Get.put(NavigationHomeController());

  final ScreenSizeController screenSizeController = Get.put(ScreenSizeController());

  @override
  initState() {
    super.initState();
    navigationController.setAppBar(customAppBar());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text(screenSizeController.isMobile() ? "Mobile" : "Desktop"),
      ),
    );
  }

  customAppBar() {
    return AppBar(
      title: Text('HomePage'),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: navigationController.openDrawer(),
      ),
    );
  }
}
