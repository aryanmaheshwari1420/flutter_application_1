import 'package:flutter/material.dart';

class ListTileNavigation extends StatelessWidget {
  String title = "";
  ListTileNavigation({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          ),
          body: Center(
            child: Text(title,style: TextStyle(fontSize: 24),),
          ),
    );
  }
}
