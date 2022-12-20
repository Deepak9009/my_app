// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:my_app/SamplePages.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedItem=0;
  var _pages = [HomePage(),Service(),History(),Balance()];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
    appBar: AppBar(title: const Text("Bottom Naviagtion Bar")),
    body: Center(
      child: Container(
        
        child:_pages[_selectedItem],)
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home",backgroundColor: Color.fromARGB(255, 185, 242, 13)),
            BottomNavigationBarItem(icon:Icon(Icons.design_services_rounded),label: "Service",backgroundColor: Color.fromARGB(255, 5, 184, 208)),
            BottomNavigationBarItem(icon:Icon(Icons.history_edu_sharp),label:"History"),
            BottomNavigationBarItem(icon:Icon(Icons.account_balance_wallet),label:"Balance"),
            ],            
            fixedColor: Color.fromARGB(255, 229, 16, 16),
            currentIndex: _selectedItem,
            unselectedItemColor: Color.fromARGB(255, 28, 18, 214),
            onTap: (setValue){
              setState(() {
                _selectedItem=setValue;
              });
            },
            ),
       
   );
  }
}