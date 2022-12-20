import 'package:flutter/material.dart';
class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTileDemo")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Deepak"),
            subtitle: Text("Engineer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Dheeraj"),
            subtitle: Text(" Design Engineer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Astha"),
            subtitle: Text("BAckand"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Trapti"),
            subtitle: Text("Marketing"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Ayush"),
            subtitle: Text("Coder"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Chavi"),
            subtitle: Text("Model"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Chavi"),
            subtitle: Text("Model"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Chavi"),
            subtitle: Text("Model"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Chavi"),
            subtitle: Text("Model"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person_add_sharp),
            title: Text("Chavi"),
            subtitle: Text("Model"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}