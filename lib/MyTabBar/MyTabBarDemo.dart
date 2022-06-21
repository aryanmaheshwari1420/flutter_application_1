// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'MyTabBarMain.dart';
import 'package:flutter/material.dart';

class MyTabBarDemo extends StatelessWidget {
  const MyTabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tab bar")),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              child: TabBar(labelColor: Colors.black, tabs: [
                Tab(
                  text: "home",
                ),
                Tab(
                  text: "home",
                ),
                Tab(
                  text: "home",
                ),
                Tab(
                  child: Icon(Icons.settings),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Center(
                    child: Text("Home screen"),
                  ),
                  Center(
                    child: Text("About screen"),
                  ),
                  Center(
                    child: Text("Service screen"),
                  ),
                  Center(
                    child: Text("Setting screen"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
