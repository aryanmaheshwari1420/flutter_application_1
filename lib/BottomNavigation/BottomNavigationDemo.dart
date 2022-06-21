// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/BottomNavigation/SamplePages.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _selectedItem = 0;
  var _pages = [HomePage(),AboutPage(),ServicePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: Center(
        child: Container(
          child: _pages[_selectedItem],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_ic_call), label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack_rounded), label: "Music"),
        ],
        type: BottomNavigationBarType.fixed,// this fixed the bottom items
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        currentIndex: _selectedItem,
        onTap: (setvalue) {
          setState(() {
            _selectedItem = setvalue;
          });
        },
      ),
    );
  }
}
