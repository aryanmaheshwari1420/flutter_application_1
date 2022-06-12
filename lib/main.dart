// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// main() {
//   runApp(
//     Center(
//       child: // creating a widget
//       Text("Hello World!",textDirection: TextDirection.ltr,),
//     )
//     );
// }

// main() {
//   runApp(
//     MaterialApp(
//       home:
//       Center(
//       child: // creating a widget
//       Text("Hello World!",textDirection: TextDirection.ltr,),
//     ),
//     )
//   );
// }

main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Aryan Maheshwari"),
          backgroundColor: Color.fromARGB(155, 121, 121, 97),
          centerTitle: true,
        ),
        body:Center(
      child: // creating a widget
      Text("Hello , I am Aryan Maheshwari",textDirection: TextDirection.ltr,style: TextStyle(fontSize: 25),),
    ),
      )
    )
  );
}



// Text is a widget(class)---> first capital letter shows it is widget
// Widget : class or Ui component used to display content on the mob screen
// Inside flutter everything is considererd as widget
//Hierarchy of nested widgets known as widget Tree