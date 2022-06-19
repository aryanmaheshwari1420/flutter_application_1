// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Screen0.dart';

class Screen2 extends StatelessWidget {
  String title = '';
  Screen2({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lime, title: Text(title)),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("got to screen-1"),
            onPressed: () {
              Navigator.pop(context);
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return Screen0();
              // }));
            },
          ),
        ),
      ),
    );
  }
}
