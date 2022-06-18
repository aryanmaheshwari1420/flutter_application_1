// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MenusDemo extends StatefulWidget {
  const MenusDemo({Key? key}) : super(key: key);

  @override
  State<MenusDemo> createState() => _MenusDemoState();
}

class _MenusDemoState extends State<MenusDemo> {
  var cities = ["Mumbai", "kolkata", "chandigarh", "banglore"];
  var firstCity = "Mumbai";
  var choices = ["Help", "About", "Logout", "profile"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Demo"),
          actions: [
            PopupMenuButton(onSelected: (String? newItem) {
              print("NEW ITEM");
            }, itemBuilder: (BuildContext context) {
              return choices.map((String mychoice) {
                return PopupMenuItem(child: Text(mychoice), value: mychoice);
              }).toList();
            })
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
              ),
              Text(
                "Dropdown Menu",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              DropdownButton(
                items: cities.map((String dropDownItems) {
                  return DropdownMenuItem(
                    child: Text(
                      dropDownItems,
                      style: TextStyle(
                          fontSize: 15,
                          color: (firstCity == dropDownItems)
                              ? Colors.blueGrey
                              : Colors.red),
                    ),
                    value: dropDownItems,
                  );
                }).toList(),
                onChanged: (String? newItem) {
                  setState(() {
                    firstCity = newItem!;
                  });
                },
                value: firstCity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
