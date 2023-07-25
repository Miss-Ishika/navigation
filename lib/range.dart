import 'package:flutter/material.dart';

class rangeScreen extends StatefulWidget {
  rangeScreen({super.key});

  @override
  State<rangeScreen> createState() => _rangeScreenState();
}

class _rangeScreenState extends State<rangeScreen> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Range"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Decide your Range"),
            SizedBox(
              height: 40,
            ),
            RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              min: 0,
              max: 100,
              activeColor: Colors.red,
              inactiveColor: Color.fromARGB(255, 214, 174, 174),
              onChanged: (newValue) {
                values = newValue;
                setState(() {});
                print("${newValue.start}, ${newValue.end}");
              },
            )
          ],
        ),
      ),
    );
  }
}
