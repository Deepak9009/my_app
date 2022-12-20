import 'package:flutter/material.dart';


class Screen0 extends StatelessWidget {
  String? title;
   Screen0({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar:AppBar(title: Text(title!),
      backgroundColor:Colors.amber),
      body: Center(
        child: Column(
          children: [
               ElevatedButton( 
                child: Text("Go to Screen1"),
                onPressed:(){
                 Navigator.pushNamed(context, 'S1');
                      },
             ),
               ElevatedButton( 
                child: Text("Go to HomeScreen"),
                onPressed:(){
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, 'HmS');
                  },)
          ],
        ),
      ));
  }
}