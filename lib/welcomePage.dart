import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  // welcome({super.key});

  var nameFrom;

  welcome(this.nameFrom);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jio App"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Welcome"),
          SizedBox(
            height: 30,
          ),
          Text("$nameFrom"),
        ],
      )),
      backgroundColor: Colors.orange,
    );
  }
}
