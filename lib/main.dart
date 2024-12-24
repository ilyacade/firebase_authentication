import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:firebase_authentication/Welcome.dart';
import 'package:firebase_authentication/second_Screen.dart';
import 'package:firebase_authentication/home.dart';
import 'package:firebase_authentication/new_account.dart';
import 'package:firebase_authentication/login.dart';
import 'package:firebase_authentication/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'Welcome', // Set the initial route to 'Welcome'
      routes: {
        'Welcome': (context) => Welcome(),
        'SecondScreen': (context) => SecondScreen(),
        'Home': (context) => Home(),
        'Login': (context) => Login(),
        'NewAccount': (context) => NewAccount(),
        'Service': (context) => Service(),
      },
    );
  }
}
