// ignore_for_file: prefer_const_constructors, unused_field
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/tplogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FbasedLogin extends StatefulWidget {
  const FbasedLogin({super.key});

  @override
  State<FbasedLogin> createState() => _FbasedLoginState();
}

class _FbasedLoginState extends State<FbasedLogin> {
  @override
  // ignore: override_on_non_overriding_member
  final _firestore=FirebaseFirestore.instance;
    TextEditingController _password=new TextEditingController();
    TextEditingController _email=new TextEditingController();
    
  //  late String _phnumber;

  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(115, 223, 29, 214),
          body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //---------Logo------------//
              Icon(
                Icons.android,
                size: 100,
              ),
              SizedBox(height: 50),

              //------Hello again------
              Text("Hello There"),
              SizedBox(height: 10),
              Text(
                "Welcome in FoodCall",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),
              // -------------Email TextField------------//
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                   focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Your Email",
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //----------Password Field---------//
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter Your Password",                  
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 10),

            //-------------Phone Number------------//
            // Padding(padding:
            // EdgeInsets.symmetric(horizontal: 25.0),
            // child: TextField(
            //   decoration: InputDecoration(
            //     enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            //           borderSide: BorderSide(color: Colors.white)),
            //     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            //           borderSide: BorderSide(color: Colors.deepPurple)),
            //       hintText: "Enter Your Phone Number",
            //       fillColor: Colors.grey,
            //       filled: true,
            //   ),
            //   onChanged: (setvalue){
            //     setState(() {_phnumber=setvalue;});
                
            //   },
            // ),),
            // SizedBox(height: 10),

              //----------Sign Up Button---//

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                    child: ElevatedButton(
                  onPressed: ()  {
                   FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _email.text,
                     password: _password.text)
                     .then((signedInUser){
                      _firestore.collection('users')
                      .add({'email':_email,'password':_password});
                       Fluttertoast.showToast(
                        msg: "You have Successfully Registered",
                        toastLength: Toast.LENGTH_LONG,
                        fontSize: 20,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        webShowClose: false,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Color.fromARGB(255, 232, 223, 223));
                      

                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginPage();
                        }));   
                      
                     }) ;  
                    },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.teal),
                        
                  ),
                )),
              ),
      
              SizedBox(height: 25),
              //--------------not a member? register now------//
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Become a Member?",
                  ),
                  TextButton(
                    onPressed: () {  
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()),);
                  },
                   child: Text("Sign In"),
                   )
                ],
              )
            ],
          )),
        ),
      ));
  }
}

