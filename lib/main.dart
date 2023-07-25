import 'package:flutter/material.dart';
import 'package:navigation/introPage.dart';
import 'package:navigation/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}
