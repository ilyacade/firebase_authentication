import 'dart:developer';
import 'package:firebase_authentication/login.dart';
import 'package:firebase_authentication/new_account.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                child: Text("Welcome To the home Click Login "
                    "if you have already account or singUp new Account"
                ,style: TextStyle(fontSize: 30,color: Colors.white),),
              ),
              Container(
                width: 200,
                height: 70,
                child: ElevatedButton(
                  child: Text(
                    'Login',style: TextStyle(fontSize: 25),
                  ),
                  onPressed: (
                      ) {
                    Navigator.pushNamed(context, 'Login');
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 70,
                child: ElevatedButton(
                  child: Text(
                    'Sign Up'
                        ,style: TextStyle(fontSize: 25),
                  ),
                  onPressed: (
                      ) {
                    Navigator.pushNamed(context, 'NewAccount');
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
