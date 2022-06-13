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

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage('images/BMW.png')),
        ),
      ),
  )
  ));
}
