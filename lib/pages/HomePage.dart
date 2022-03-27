import 'package:flutter/material.dart';
import 'package:responsive_studies/pages/layouts/Landscape.dart';
import 'package:responsive_studies/pages/layouts/Portrait.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),      
    body: mediaQuery.orientation == Orientation.portrait ? HomePortrait() : HomeLandscape()
    );
  }
}