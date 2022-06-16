// ignore_for_file: prefer_const_constructors, avoid_print, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonDemo extends StatelessWidget {
  const buttonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("ButtonDemo"),
        ),
        body: Center(child: Container(child: Text("This is scaffold body"))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating action button clicked");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}



// floatin action button is not a part of body it is in hawa(floating)