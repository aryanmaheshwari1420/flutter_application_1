// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Screen0.dart';
import 'package:flutter_application_1/Screen/Screen2.dart';

class Screen1 extends StatelessWidget {
  String title = "";
  Screen1({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigoAccent, title: Text(title)),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text(
              "got to screen-2",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen2(title: 'About Phone',);
              }));

              // Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
