import 'dart:developer';
import 'package:firebase_authentication/login.dart';
import 'package:firebase_authentication/new_account.dart';
import 'package:firebase_authentication/home.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                child: Text("Welcome To the Second Screen Click the button"
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
                    Navigator.pushNamed(context, 'Home');
                  },
                ),
              ),
              // three ways to solve blue screen
              // 1. clean cdm using sfc/cannow
              // 2. update the pc
              // 3. restart holding shift key in your keyboard

            ],
          ),
        ),
      ),
    );
  }
}
