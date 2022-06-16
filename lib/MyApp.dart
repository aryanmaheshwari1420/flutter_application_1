import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(child: Text("This is stateless widget")),
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}