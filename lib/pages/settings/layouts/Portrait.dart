import 'package:flutter/material.dart';
import 'package:responsive_studies/widgets/Drawer.dart';


class SettingsPortrait extends StatelessWidget {
  const SettingsPortrait({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text("Settings Portrait")
      ),
      body: Container(
        color: Color.fromRGBO(233, 30, 99, 1),
        child: Center(
          child: Text("Portrait")
        ),
      ),
    );
  }
}