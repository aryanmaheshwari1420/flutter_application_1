// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// this code in used to take image in app at the centre
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Image(
//             image: AssetImage('images/BMW.png')),
//         ),
//       ),
//   )
//   ));
// }


// image widget 
// 1. network image : find the address on the internet
// 2. asset image : the image resource available inside project 

//SafeArea widget
// safe area widget put the content below the bar

// Centre  take only 1 child  


// --------------------------------------------------------------------------------------------------------------
// container
// code to put the text at the centre of the container
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: SafeArea(
//         child:Center(
//           child: Container(color: Colors.green,
//           width:200,
//           height:150,
//             child: Align(
//               alignment: Alignment.center,
//               child: Text(
//                 "Flutter",
//                 style: TextStyle(fontSize: 25,color: Colors.white),)),
//           ),
//         ) 
//       )
//   ),
//   ));
// }

// code to put the image at the centre of the container


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child:Center(
          child: Container(color: Colors.green,
          width:200,
          height:150,
            child: Align(
              alignment: Alignment.center,
              child: Image(image: AssetImage('images/BMW.png'),
              width: 80,height: 60,)),
          ),
        ) 
      )
  ),
  ));
}

// container only have 1 child