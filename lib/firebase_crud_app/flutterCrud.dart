import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class flutterCrud extends StatefulWidget {
  const flutterCrud({Key? key}) : super(key: key);

  @override
  State<flutterCrud> createState() => _flutterCrudState();
}

class _flutterCrudState extends State<flutterCrud> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  // create an instance of Firebase

  final firebase = FirebaseFirestore.instance;

  void create() async{
    try {
      await firebase.collection("User").doc().set({
        "name": name.text,
        "email": email.text,
      });
    } catch (e) {
      print(e);
    }
  }

  void update() {
    try {
      print("Update Button Pressed");
    } catch (e) {
      print(e);
    }
  }

  void delete() {
    try {
      print("Delete Button Pressed");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firebase crud app")),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      create();
                      name.clear();
                      email.clear();
                    },
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 18),
                    )),
                ElevatedButton(
                    onPressed: () {
                      update();
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 18),
                    )),
                ElevatedButton(
                    onPressed: () {
                      delete();
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
