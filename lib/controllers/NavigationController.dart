import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationHomeController extends GetxController {
  handleGetContext() {
    final BuildContext ctx = Get.context!;
    return ctx;
  }

  handleChangeScreen({callback = null, page = ''}) {
    final BuildContext ctx = Get.context!;
    final mediaQuery = MediaQuery.of(ctx);

    if (mediaQuery.size.width <= 900) {
      Get.back();
    }

    if (page != '') {
      Navigator.pushNamed(ctx, page);
    }

    if (callback != null) {
      callback();
    }
  }

  handleChangeReplacingScreen({callback = null, page = ''}) {
    final BuildContext ctx = Get.context!;
    final mediaQuery = MediaQuery.of(ctx);

    if (mediaQuery.size.width <= 900) {
      Get.back();
    }

    if (page != '') {
      Navigator.pushReplacementNamed(ctx, page);
    }

    if (callback != null) {
      callback();
    }
  }

  final drawerKey = GlobalKey<ScaffoldState>();

  openDrawer() {
    drawerKey.currentState?.openDrawer();
  }

  closeDrawer() {
    drawerKey.currentState?.openEndDrawer();
  }

  PreferredSizeWidget initialAppBar() {
    return AppBar(
      title: Text(''),
    );
  }

  PreferredSizeWidget appBar = AppBar();

  setAppBar(PreferredSizeWidget newAppBar) {
    appBar = newAppBar;
  }
}
