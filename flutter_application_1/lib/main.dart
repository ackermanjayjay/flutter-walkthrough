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
          body: Row
          (
            children: <Widget>
            [
              Expanded(child: Image.asset("assets/back.jpg"),
              flex: 3,
              ),
              Expanded
              (
                flex: 3,
              child :Container
              (
                  padding:EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: Text("1"),
              ),
              ),
                Expanded(
                  flex: 2,
                  child: Container
                  (
                   padding:EdgeInsets.all(30.0),
                    color: Colors.redAccent,
                    child: Text("1"),
                  ),
                ),
                  Expanded(
                    flex: 1,
                    child: Container
                                  (
                                   padding:EdgeInsets.all(30.0),
                    color: Colors.amberAccent,
                    child: Text("1"),
                                  ),
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



