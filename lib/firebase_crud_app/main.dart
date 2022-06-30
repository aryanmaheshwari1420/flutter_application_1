import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_crud_app/flutterCrud.dart';

void main() async{
  // for binding 3rd party libraries
  WidgetsFlutterBinding.ensureInitialized();
  // for initialize firebase
  await Firebase.initializeApp();

  runApp(MaterialApp(
    home: flutterCrud(),
  ));
}









