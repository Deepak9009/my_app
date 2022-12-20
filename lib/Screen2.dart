// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String? title;
   Screen2({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),),
        body: Center(
          child:Column(
            children: [
              ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, 'HmS');
              }, child: Text("Goto HomeScreen"),)
            ],
          ) ,),
    );
  }
}