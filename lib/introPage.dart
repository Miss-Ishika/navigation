// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:navigation/range.dart';
import 'package:navigation/welcomePage.dart';

class intropage extends StatelessWidget {
  intropage({super.key});

  var yourName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Start your Jio App Now",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: yourName,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return welcome(yourName.text.toString());
                }));
              },
              child: Text("Click Here")),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => rangeScreen()));
            },
            child: Text("Range"),
          )
        ]),
      ),
    );
  }
}
