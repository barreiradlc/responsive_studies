import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/controllers/NavigationController.dart';
import 'package:responsive_studies/layouts/DashboardDrawer/Desktop.dart';
import 'package:responsive_studies/layouts/DashboardDrawer/Mobile.dart';
import 'package:responsive_studies/widgets/Drawer.dart';

class DashboardDrawerLayout extends StatelessWidget {
  final Widget page;

  const DashboardDrawerLayout(this.page, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationHomeController navigationController = Get.put(NavigationHomeController());

    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            return DashboardDesktop(page);
          }
          return DashboardMobile(page);
        },
      ),
    );
  }
}
