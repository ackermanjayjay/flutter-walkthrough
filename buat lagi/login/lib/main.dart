import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp
    (
    home:Listku(),
    ),
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
        debugShowCheckedModeBanner: false,
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
            TextFormField
            (
              obscureText: true,
              decoration: InputDecoration
              (
                border: UnderlineInputBorder(),
                labelText:"Password"
              ),
            ),
            FloatingActionButton(
              child:  Positioned.fill(
              child: Icon(Icons.login),
              ),
              backgroundColor: Colors.greenAccent,
              onPressed:(){
                Navigator.of(context).push(_createRoute());
              },
              ),
          ],
          ),
        ),
    ),
      );
  }
}
Route _createRoute()
{
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation)=>halaman2(),
    transitionsBuilder: (context,animation,secondaryAnimation,child)
    {
      const begin=Offset(0, 1);
      const end=Offset.zero;
      const curve =Curves.ease;
      var tween = Tween(
        begin: begin,
        end:end).chain
        (
          CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
            );
    }
  );
}
class halaman2 extends StatefulWidget {
 

  @override
  _halaman2State createState() => _halaman2State();
}

class _halaman2State extends State<halaman2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold
      (
        appBar: AppBar(),
        body: Center
        (
          child: Text("login berhasil"),
        ),
        floatingActionButton: FloatingActionButton
        (
          child:Positioned.fill(
            child: Icon(Icons.logout)
            ) ,
               backgroundColor: Colors.redAccent,
          onPressed: ()
        {
          Navigator.of(context).push(_createRoute2());
        },
        ),
      ),
    );
  }
}
Route _createRoute2()
{
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation)=>Listku(),
    transitionsBuilder: (context,animation,secondaryAnimation,child)
    {
      const begin=Offset(0, 1);
      const end=Offset.zero;
      const curve =Curves.ease;
      var tween = Tween(
        begin: begin,
        end:end).chain
        (
          CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
            );
    }
  );
}
