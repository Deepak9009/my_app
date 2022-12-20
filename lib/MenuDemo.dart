// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';


class MenuDemo extends StatefulWidget {

  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  var cities=["select your city","Delhi","agra","etah"];
  var defaultcity="select your city";
  var choices=["Home","Info","Contact Us","AboutUS","Help"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Menu Demos"),
       actions: [
        PopupMenuButton(itemBuilder: (BuildContext context){
        return choices.map((String mychoice) {
          return PopupMenuItem(child: Text(mychoice));
        }).toList();
         }),
         ]
         ),
        body:Center(
          child: Column(children: [
            Container(margin: EdgeInsets.symmetric(vertical: 20),child: Text("DropDown Menu",style: TextStyle(fontSize: 30,color:Colors.black54),)),
            DropdownButton(items:cities.map((String dropdownItems){
              return DropdownMenuItem(child: Text(dropdownItems,style: TextStyle(fontSize: 20,color:(defaultcity==dropdownItems)? Colors.red:Colors.blue),),value: dropdownItems,);
            }).toList(), onChanged: (String? newItem){setState(() {
                defaultcity=newItem!;
            });
            },
            value:defaultcity)
          ],
          ),
        ) ,
      ),
    );
  }
}