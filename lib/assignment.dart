// Googe and the text --> Google search engine

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child:Center(
//             child: Container(
//               child: Image(
//                 image: NetworkImage(
//                   'https://pngimg.com/uploads/google/google_PNG19642.png'),
//               ),
//             ),
//           )
//         ),
//       ),
//     )
//   );
// }


// Text(
            //   "Google Search Engine",style: TextStyle(fontSize: 25,color: Colors.black),
            //   )

// --------------------------------------------------pizza assignment----------------------------------------            

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
                // color: Colors.greenAccent,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToHkgLNii7XXAp3czG9-Tu8SA_hKRVrD0fNg&usqp=CAU',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Kabab chaska pizza",style: TextStyle(fontSize:15,color: Colors.cyan),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                // color: Colors.amberAccent,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHJx4yTksLbEfvflv8l1e0ufM5-XvvqcIUmA&usqp=CAU',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Neapolitan -Style pizza",style: TextStyle(fontSize:15,color: Colors.deepOrangeAccent),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                // color: Colors.grey,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://www.vegrecipesofindia.com/wp-content/uploads/2020/12/margherita-pizza-4.jpg',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Margherita-pizza",style: TextStyle(fontSize: 15,color: Colors.lime),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                // color: Colors.lightBlue,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://image.shutterstock.com/z/stock-photo-cheese-burst-pizza-with-beautiful-toppings-1403906810.jpg',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Cheese Burst PIZZA",style: TextStyle(fontSize: 15,color: Colors.pinkAccent),) 
                  ],
                ),
              ),
               Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                // color: Colors.blueGrey,
                child: Row(
                children: [
                  SizedBox(width: 5,),
                  Image(image: NetworkImage('https://www.archanaskitchen.com/images/archanaskitchen/World_Pastas_Pizzas/healthy-pizza-recipe_400.jpg',),width: 150,height: 120,
                    ),
                  SizedBox(width: 20,),
                  Text("Soy and Corn PIZZA",style: TextStyle(fontSize: 15,color: Colors.orangeAccent),) 
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
