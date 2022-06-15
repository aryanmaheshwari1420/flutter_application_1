// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Column(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: Colors.greenAccent,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/OS_Android.png',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Android OS",style: TextStyle(fontSize: 35),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: Colors.amberAccent,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/OS_Android.png',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Android OS",style: TextStyle(fontSize: 35),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: Colors.grey,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/OS_Android.png',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Android OS",style: TextStyle(fontSize: 35),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: Colors.lightBlue,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/OS_Android.png',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Android OS",style: TextStyle(fontSize: 35),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: Colors.blueGrey,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/OS_Android.png',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Android OS",style: TextStyle(fontSize: 35),) 
                  ],
                ),
              ),
            ],
          ) 
        ),
      ),
    )
  );
}
