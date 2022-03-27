import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSizeController extends GetxController {
  getCurrentSize() {
    final BuildContext ctx = Get.context!;
    final mediaQuery = MediaQuery.of(ctx);

    return mediaQuery.size;
  }

  getCurrentWidth() {
    final size = getCurrentSize();
    return size.width;
  }

  bool isMobile() {
    final width = getCurrentWidth();
    if (width <= 900) {
      return true;
    }

    return false;
  }
}
