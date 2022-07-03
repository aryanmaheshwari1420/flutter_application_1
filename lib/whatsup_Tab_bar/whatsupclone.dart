import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class whatsupclone extends StatefulWidget {
  
  const whatsupclone({Key? key}) : super(key: key);

  @override
  State<whatsupclone> createState() => _whatsupcloneState();
 
}

class _whatsupcloneState extends State<whatsupclone> {
   var choices = ["Help", "About", "Logout", "profile"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 23, 117, 103),
          title: Text("YoWhatsApp"),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.search)),
           PopupMenuButton(onSelected: (String? newItem) {
              print("NEW ITEM");
            }, itemBuilder: (BuildContext context) {
              return choices.map((String mychoice) {
                return PopupMenuItem(child: Text(mychoice), value: mychoice);
              }).toList();
            })
            
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ]),
        ),
      ),
    );
  }
}
