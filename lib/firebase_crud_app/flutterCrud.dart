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

  void create() async {
    try {
      await firebase.collection("User").doc(name.text).set({
        "name": name.text,
        "email": email.text,
      });
      // unique id comes under doc()
    } catch (e) {
      print(e);
    }
  }

  void update() async {
    try {
      // print("Update Button Pressed");
      await firebase
          .collection("User")
          .doc(name.text)
          .update({"email": email.text});
    } catch (e) {
      print(e);
    }
  }

  void delete()async {
    try {
      // print("Delete Button Pressed");
      await firebase.collection("User").doc(name.text).delete();
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
