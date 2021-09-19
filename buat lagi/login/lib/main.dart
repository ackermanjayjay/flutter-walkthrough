import 'package:flutter/material.dart';

void main() {
  runApp(
    Listku()
    );
}

class Listku extends StatefulWidget {
  

  @override
  _ListkuState createState() => _ListkuState();
}

class _ListkuState extends State<Listku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold
      (
  appBar: AppBar
    (
      title: Text("Login Majo"),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      elevation: 0,
      ),
      body: Padding
      (
        padding:EdgeInsets.fromLTRB(15, 45, 31, 0) ,
        child: Column
        (
          children:<Widget> [
            Center
            (
              child: CircleAvatar
              (
                backgroundImage: AssetImage("assets/elaina.jpg"),
                radius: 60,
              ),
            ),
            TextFormField
            (
            decoration: InputDecoration
          (
              border: UnderlineInputBorder(),
              labelText: "Input You name"
            ),
            ),
          ],
          ),
        
        ),
        
        
    ),
      );
  }
}
