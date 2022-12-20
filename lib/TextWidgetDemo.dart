import 'package:flutter/material.dart';
class textFieldDemo extends StatelessWidget {
  const textFieldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Enter Your Name",
              labelStyle: TextStyle(fontSize: 20,color: Colors.black),
              border: OutlineInputBorder(),
          ),
          
          
      ),
        )
    ));
  }
}