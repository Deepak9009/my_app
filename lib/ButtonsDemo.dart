// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonsDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text("ButtonsDemo"),
        ),
        body: Center(
            child: Container(
              child:Column(
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 134, 203, 30)), onPressed: (){},child: Text("ElevatedButton",style: TextStyle(fontSize:20),)),
                  TextButton(onPressed: (){}, child: Text("TextButton",style: TextStyle(fontSize: 22) ,)),
                  OutlinedButton(onPressed: (){}, child: Text("OutlineButton",style:TextStyle(fontSize: 22))),
                  IconButton(onPressed: (){}, icon: Icon(Icons.alarm_add,size: 30,color: Color.fromARGB(255, 195, 19, 19)))
                ]),
             ),
             ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child:  Icon(Icons.add),
        ),
      ),
    );
  }
}
