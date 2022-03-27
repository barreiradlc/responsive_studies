import 'package:flutter/material.dart';

class HomeLandscape extends StatelessWidget {
  const HomeLandscape({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text("Landscape")
        ),
      ),
    );
  }
}