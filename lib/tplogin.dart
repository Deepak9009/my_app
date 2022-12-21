// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable, sort_child_properties_last, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/FirebaseLogin.dart';

import 'PizzaApp.dart';
class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.easeOut);
    animation.addListener(() => this.setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    TextEditingController _email=new TextEditingController();
    TextEditingController _password=  new TextEditingController();
    bool toastcheck=true;

    return Scaffold(
     
      backgroundColor: Color.fromARGB(115, 223, 29, 214),
      body:
          // Image(
          //   image: AssetImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Ftile-floor-brick-wall-background-lights-night-hd-image-large-resolution-can-be-used-as-desktop-wallpaper-real-zise-image184215885&psig=AOvVaw0pVcRcBbJFzb2JWzqduRyy&ust=1669469164265000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOiq0bW3yfsCFQAAAAAdAAAAABAE"),
          // fit: BoxFit.cover,
          // color: Colors.black87,
          // colorBlendMode: BlendMode.darken,
          // ),
          SingleChildScrollView(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [ SizedBox(height: 50),
                Icon(Icons.android,
                  size: animation.value * 100,
                  // curve: Curves.fastLinearToSlowEaseIn,
                ),
                

              //------Hello again------
              Text("Hello There"),
              SizedBox(height: 10),
              Text(
                "Welcome in FoodCall",
                style: TextStyle(fontSize: 18),
              ),
             
                Form(
                    child: Theme(
                  data: ThemeData(
                      brightness: Brightness.dark,
                      primaryColor: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 20.0))),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(20),
                      ),hintText: "Enter Your Email",
                      fillColor: Colors.black12,
                      filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                        ),
                        SizedBox(height: 20),
          
                        TextField(
                          decoration: InputDecoration(
                             enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ), focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(20),
                      ), hintText: "Enter Your Email",
                      fillColor: Colors.black12,
                      filled: true,
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          controller: _password,
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        MaterialButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: Text("LogIn"),
                          splashColor: Colors.redAccent,
                          onPressed: () {
                              
                                 FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email:_email.text, 
                                  password: _password.text).then((FirebaseUser){
                                    toastcheck=false;
                                //-------------Toast------------//
                                    Fluttertoast.showToast(
                                msg: "Login Successfully",
                                toastLength: Toast.LENGTH_LONG,
                                fontSize: 20,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green,
                                webShowClose: false,
                                gravity: ToastGravity.BOTTOM,
                                textColor: Color.fromARGB(255, 232, 223, 223));
                                
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return PizzaApp();
                                  }));
                                   }); 
                               
                                //  if(toastcheck){  Fluttertoast.showToast(
                                // msg: "Invalid User",
                                // toastLength: Toast.LENGTH_LONG,
                                // fontSize: 20,
                                // timeInSecForIosWeb: 1,
                                // backgroundColor: Colors.green,
                                // webShowClose: false,
                                // gravity: ToastGravity.BOTTOM,
                                // textColor: Color.fromARGB(255, 232, 223, 223));}
                                  },
                               
                          
                        ),
                       MaterialButton(
                        color: Colors.teal,
                          textColor: Colors.white,
                          child: Text("Sign Up"),
                          splashColor: Colors.redAccent,
                          hoverColor: Colors.purple,
                          
                        onPressed: (){                     
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return FbasedLogin();
                          }));
                       }),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          )
        
    );
  }
}
