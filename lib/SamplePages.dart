// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: const Center(
        child:
         Text("HomePage",
         style: TextStyle(fontSize: 20,color: Colors.amberAccent),),
         
      ),
    );
  }
}
class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child:
         Text("Service",
         style: TextStyle(fontSize: 20,color: Colors.amberAccent),),

      ),
    );
  }
}
class History extends StatelessWidget {
  const History ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child:
         Text("History",
         style: TextStyle(fontSize: 20,color: Colors.amberAccent),),

      ),
    );
  }
}
class Balance  extends StatelessWidget {
  const Balance ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child:
         Text("Balance",
         style: TextStyle(fontSize: 20,color: Colors.amberAccent),),

      ),
    );
  }
}