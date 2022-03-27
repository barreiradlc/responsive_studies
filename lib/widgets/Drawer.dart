import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_studies/controllers/NavigationController.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationHomeController navigationController = Get.put(NavigationHomeController());

    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              navigationController.handleChangeReplacingScreen(page: '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              navigationController.handleChangeReplacingScreen(page: '/settings');
            },
          ),
        ],
      ),
    );
  }
}
