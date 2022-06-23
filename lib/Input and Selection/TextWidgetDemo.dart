import 'package:flutter/material.dart';

class TextWidgetDemo extends StatefulWidget {
  const TextWidgetDemo({Key? key}) : super(key: key);

  @override
  State<TextWidgetDemo> createState() => _TextWidgetDemoState();
}

class _TextWidgetDemoState extends State<TextWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              maxLength: 20, // maximum character it can hold
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 15, color: Colors.red),
                hintText: "Enter your Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 10, // maximum character it can hold
              decoration: InputDecoration(
                  labelText: "Mobile",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.red),
                  hintText: "Enter your number",
                  border: UnderlineInputBorder(),
                  fillColor: Colors.black12,
                  filled: true),
              keyboardType: TextInputType.number, // for only number
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLines: 3,
              maxLength: 20, // maximum character it can hold
              decoration: InputDecoration(
                labelText: "Description",
                labelStyle: TextStyle(fontSize: 15, color: Colors.red),
                hintText: "Enter your Address",
                border:
                    InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
                  labelText: "password",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.blue),
                  hintText: "Enter your pass",
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.lightBlue,),
                ),
                obscureText: true, // for data not to be visible
                ),
                SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
