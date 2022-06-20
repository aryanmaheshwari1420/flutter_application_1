// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'ListTileMain.dart';
import 'ListTileNavigation.dart';
import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list Tile Demo"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListTileNavigation(title: "Aryan Maheshwari");
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhay Maheshwari"),
            subtitle: Text("Full stack developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mr Nimisha Maheshwari"),
            subtitle: Text("Editor"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mr Narendra Maheshwari"),
            subtitle: Text("Busines Man"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aryan Maheshwari"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_sharp),
          ),
        ],
      ),
    );
  }
}
