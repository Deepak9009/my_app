
// @dart=2.9
// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/FirebaseLogin.dart';



// import 'package:my_app/ListTileDemo.dart';
// import 'package:my_app/NavRail.dart';
// import 'package:my_app/PizzaApp.dart';
// import 'package:my_app/TextWidgetDemo.dart';


import 'BottomNavigatioBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FbasedLogin()),
    );
  
   
  }



