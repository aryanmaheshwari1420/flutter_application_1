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
        body: Center(
            child: Container(
                child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 24),
                )),
            TextButton(
                onPressed: () {},
                child: Text("TextButton", style: TextStyle(fontSize: 24))),
            OutlinedButton(
                onPressed: () {},
                child: Text("OutLine Button", style: TextStyle(fontSize: 24))),
            IconButton(onPressed: (){}, icon: Icon(Icons.wifi_sharp))    
          ],
        ))),
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



// floating action button is not a part of body it is in hawa(floating)