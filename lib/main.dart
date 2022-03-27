import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/layouts/DashboardDrawer/DashboardDrawerLayout.dart';
import 'package:responsive_studies/pages/home/HomePage.dart';
import 'package:responsive_studies/pages/settings/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => DashboardDrawerLayout(HomePage()), transition: Transition.fadeIn),
        GetPage(name: '/settings', page: () => DashboardDrawerLayout(SettingsPage()), transition: Transition.fadeIn),
      ],
    );
  }
}
