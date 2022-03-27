import 'package:flutter/material.dart';
import 'package:responsive_studies/widgets/Drawer.dart';

class DashboardDesktop extends StatelessWidget {
  final Widget page;

  const DashboardDesktop(this.page, {Key? key}) : super(key: key);

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
            child: page,
          ),
        ],
      ),
    );
  }
}
