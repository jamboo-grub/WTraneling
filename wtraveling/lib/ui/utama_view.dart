import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text("Jepara travelling"),
            backgroundColor: Colors.redAccent,
          ),),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Speker"),
          ),
        ],
      ),
    );
  }
}
