import 'package:flutter/material.dart';
import './screens/homepage.dart';
import 'themes/default.dart';

void main() {
  runApp(Revamp());
}

class Revamp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: rvThemeData,
      home: Homepage(title: 'Flutter Demo Home Page'),
    );
  }
}
