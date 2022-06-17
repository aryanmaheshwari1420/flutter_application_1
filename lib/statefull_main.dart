import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'statefull_widget.dart';

void main() {
  runApp(statefull_widget());
}

class statefull_widget extends StatefulWidget {
  @override
  State<statefull_widget> createState() => _statefull_widgetState();
}

class _statefull_widgetState extends State<statefull_widget> {
  int x = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                x = 20;
              });
              if (x > 10) {
                print("Hello this is an if statement");
              } else {
                print("hello this is else statement");
              }
            },
            child: Text("Some button"),
          ),
        ),
      )),
    );
  }
}
// set state function will  update the value of x for correct result whatever u have given the updated data