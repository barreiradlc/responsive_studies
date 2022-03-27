import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/controllers/NavigationController.dart';
import 'package:responsive_studies/widgets/Drawer.dart';

class DashboardMobile extends StatelessWidget {
  final Widget page;
  const DashboardMobile(this.page, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationHomeController navigationController = Get.put(NavigationHomeController());

    return Scaffold(
      key: navigationController.drawerKey,
      drawer: HomeDrawer(),
      appBar: navigationController.appBar,
      body: page,
    );
  }
}
