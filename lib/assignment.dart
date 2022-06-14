// Googe and the text --> Google search engine

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Center(
            child: Container(
              child: Image(
                image: NetworkImage(
                  'https://pngimg.com/uploads/google/google_PNG19642.png'),
              ),
            ),
          )
        ),
      ),
    )
  );
}


// Text(
            //   "Google Search Engine",style: TextStyle(fontSize: 25,color: Colors.black),
            //   )