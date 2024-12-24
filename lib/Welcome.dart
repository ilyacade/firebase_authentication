import 'dart:developer';
import 'package:firebase_authentication/second_Screen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff4189dd),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Welcome to the home page',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: Text("Welcome To the first Screen Click the button"
                    "to continue "

                  ,style: TextStyle(fontSize: 30,color: Colors.white),),
              ),
              Container(
                width: 200,
                height: 70,
                child: ElevatedButton(
                  child:Icon(Icons.arrow_forward,size: 70,),
                  onPressed: (
                      ) {
                    Navigator.pushNamed(context, 'SecondScreen');
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
