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
          body:Center
          (
            child:Image(
              image:AssetImage("assets/back.jpg"),
              )
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



