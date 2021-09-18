import 'package:flutter/material.dart';

void main() 
{
  runApp
  (
    Home()
  );
}
class Home extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text(
            "Ini AppBar",
            style: TextStyle(
              color:Colors.white,
              fontFamily: "IndieFlower",
            ),
            ),
          centerTitle: true,
          backgroundColor: Colors.red,
          ),
          body: Column
          (
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
children: <Widget>[
  Text("iya"),
  Text("iya"),
  Text("iya"),
],
              ),
              Container(
                padding: EdgeInsets.all(20),
               color: Colors.cyan,
                child: Text("one"),
              ),
                Container(
                padding: EdgeInsets.all(30),
               color: Colors.red,
                child: Text("one"),
              ),
                Container(
                padding: EdgeInsets.all(40),
               color: Colors.lightBlue,
                child: Text("one"),
              ),
            ],
          ),
        floatingActionButton: FloatingActionButton
        (
          child: Text("click"),
          backgroundColor: Colors.red,
          onPressed:()
      {
        
      }
          ),
        )
    );
  }
}



