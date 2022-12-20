// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:my_app/tplogin.dart';


class PizzaApp extends StatefulWidget {
  const PizzaApp({Key? key}) : super(key: key);

  @override
  State<PizzaApp> createState() => _PizzaAppState();
}

class _PizzaAppState extends State<PizzaApp> {
  String pizzaTopping = "";
  String pizzaSize = "";

  var _intialValue = 0.0;
  bool _isPaid = false;
  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Pizza App"),
        leading: GestureDetector(
           onTap: () => FirebaseAuth.instance
                    .signOut()
                    .then((value) {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }));
                    })
                    .catchError((e) {
                  print(e);
                }), 
            child: Icon(Icons.logout_rounded,textDirection: TextDirection.rtl,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Select your Topping",
                style: TextStyle(fontSize: 20.0, color: Colors.green)),
            CheckboxGroup(
              labels: [
                "Onion",
                "Black Olive",
                "Mushroom",
                "Green Paper",
                "Olive",
              ],
              onSelected: (List<String> Selected) {
                setState(() {
                  pizzaTopping = Selected.toString();
                });
              },
            ),
            Text(
              "Select Pizza Size",
              style: TextStyle(fontSize: 20.0, color: Colors.green),
            ),
            RadioButtonGroup(
              labels: [
                "Small",
                "Medium",
                "Large",
              ],
              onSelected: (String Selected) {
                setState(() {
                  pizzaSize = Selected;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Pizza Quantity",
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                  Slider(
                    activeColor: Colors.purple,
                    inactiveColor: Color.fromARGB(255, 17, 158, 228),
                    value: _intialValue,
                    onChanged: (newQuantity) {
                      setState(() {
                        _intialValue = newQuantity;
                      });
                    },
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: '$_intialValue',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Select Payement  Method",
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                  Switch(
                      inactiveTrackColor: Colors.purple,
                      value: _isPaid,
                      onChanged: (bool status) {
                        setState(() {
                          _isPaid = status;
                        });
                      }),
                  Text(_isPaid ? "Yes" : "No",
                      style: TextStyle(fontSize: 18, color: Colors.green)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Select Delivery Date",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  IconButton(
                      onPressed: () {
                        _selectDate(context);
                      },
                      icon: Icon(Icons.date_range)),
                  Text('${today.day}-${today.month}-${today.year}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Select Delivery Time",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  IconButton(
                      onPressed: () {
                        _selectTime(context);
                      },
                      icon: Icon(Icons.access_time)),
                  Text('${todayTime.hour}:${todayTime.minute}'),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showPreview(context);
                
                },
                child: Text("Preview Order")),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    // ignore: unused_local_variable
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    // print(pickedDate);
    if (pickedDate != null && pickedDate != today) {
      setState(() {
        today = pickedDate;
      });
    }
  }

  void _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: todayTime);
    setState(() {
      todayTime = pickedTime!;
    });
  }

  void showPreview(BuildContext context) {
    var alertdialog = CupertinoAlertDialog(
      title: Text("Pizza Order Status",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
      content: Text(
          "Topping:$pizzaTopping \n Pizza Size: $pizzaSize \n Pizza Quantity:$_intialValue"),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Change order")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertdialog;
        });
  }
}
