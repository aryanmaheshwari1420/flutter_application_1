// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.greenAccent, title: Text("Screen 0 ")),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("got to screen-1"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen1();
              }));
            },
          ),
        ),
      ),
    );
  }
}

// context is bascially the current UI
// MaterialPageRoute is for creating stack/route










