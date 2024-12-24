import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/home.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  String email = '';
  String password = '';
  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // **************** User Name ****************
                  Row(
                    children: [
                      Text(
                        'Email Address:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(width: 20.0),
                      SizedBox(
                        width: 220.0,
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  // **************** Password ****************
                  Row(
                    children: [
                      Text(
                        'Password:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(width: 20.0),
                      SizedBox(
                        width: 220.0,
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // ************* Login Button **********
                  Column(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 70,
                        margin: EdgeInsets.all(30),
                        child: ElevatedButton(
                          child: Text('Log In', style: TextStyle(fontSize: 25)),
                          onPressed: () async {
                            try {
                              final user = await _auth.signInWithEmailAndPassword(
                                email: email,
                                password: password,
                              );
                              if (user != null) {
                                Navigator.pushNamed(context, 'Service');
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.fromLTRB(0, 10, 300, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Home');
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Navigate to New Account screen
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'NewAccount');
                    },
                    child: Text("Don't have an account? Sign up"),
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
