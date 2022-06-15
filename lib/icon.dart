// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.call,
                size: 50,
                color: Colors.blue,
              ),
              Text("This is for call"),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_alarms,
                size: 50,
                color: Colors.blue,
              ),
              Text("This is for alarm"),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.ad_units_sharp,
                size: 50,
                color: Colors.blue,
              ),
              Text("This is for unit sharp"),
            ],
          ),
        ],
      )),
    ),
  ));
}
