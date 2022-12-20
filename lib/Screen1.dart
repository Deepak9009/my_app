
import 'package:flutter/material.dart';

import 'Screen0.dart';
// ignore: unused_import

class Screen1 extends StatelessWidget {
  String? title;
   Screen1({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar:AppBar(title: Text(title!),
      backgroundColor:Colors.purple),
      body: Center(
        child: Container(
          child: ElevatedButton(
            // ignore: prefer_const_constructors
            child: Text("Goto Screen->0"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Screen0(title: "About Us");
              }),);
            }
         ),
    ),
      ));
  }
}