import 'package:flutter/material.dart';
import 'package:responsive_studies/widgets/Drawer.dart';

class SettingsLandscape extends StatelessWidget {
  const SettingsLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: HomeDrawer(),
          ),
          Expanded(
            flex: 4,
            child: Scaffold(
              appBar: AppBar(title: Text("Settings Landscape")),
              body: Container(
                color: Colors.amber,
                child: Center(child: Text("Landscape")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
