import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation/introPage.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => intropage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hola",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
