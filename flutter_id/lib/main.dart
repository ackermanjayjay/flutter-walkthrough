

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyId()
    );
}

class MyId extends StatefulWidget {

  @override
  _MyIdState createState() => _MyIdState();
}

class _MyIdState extends State<MyId> 
{

int level=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
        debugShowCheckedModeBanner: false,

      home:Scaffold
      (
        floatingActionButton: FloatingActionButton
        (
          onPressed:()
          {
            setState(()
            {
              level+=1;
            });
          },
           child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
           ),
        backgroundColor: Colors.grey[900],
          appBar: AppBar
          (
              title: Text("Ackerman ID Card"),
              centerTitle: true,
              backgroundColor: Colors.grey[850],
              elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 30, 0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>
              [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/Mina.jpg"),
                    radius: 40.0,
                  ),
                ),
                Text
                (
                  "NAME",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "IndieFlower",
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                    Text
                (
                  "Mina",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontFamily: "IndieFlower",
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                  Text
                (
                  "$level",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: "IndieFlower",
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                  Text
                (
                  "8",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontFamily: "IndieFlower",
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                Row
                (
                  children: <Widget>
                  [
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Mina@ftumj.ac.id",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}

