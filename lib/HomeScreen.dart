import 'package:flutter/material.dart';

import 'Screen0.dart';




class HomeScreen extends StatelessWidget {
  String? title;
  HomeScreen({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      body: Center(
        child:Column(
          children: [
            ElevatedButton(
              onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder:(context){
                return Screen0(title:"By HomeScreen");
               }),);
                }, child: Text("Screen0"),),
            ElevatedButton(
              onPressed: (){
                  Navigator.pushNamed(context,'S1');
              }, child: Text("Screen1"),),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'S2');
              }, child: Text("Screen2"),),
              ],
            
        ),),
    );
  }
}