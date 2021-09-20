import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp( 
      debugShowCheckedModeBanner: false,
     home: FormLogin(),
    ),
  );
}

class FormLogin extends StatefulWidget {
  const FormLogin({ Key? key }) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.grey[850],
        title:Center(   
          child: Text(
            "Saya",
            style:TextStyle
            (
              fontFamily: "IndieFlower",
              
            ),
          ),
        ),
      ),
    );
  }
}