import 'package:flutter/material.dart';

class HomePortrait extends StatelessWidget {
  const HomePortrait({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Text("Portrait")
        ),
      ),
    );
  }
}