import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff4189dd),
        appBar: AppBar(
          title: Text('Android ATC', style: TextStyle(fontSize: 20,color: Colors.white),),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('finally you have successfully Login',
                style: TextStyle(fontSize: 40,color: Colors.white),),
              ),
              
            ),
            Container(
              width: 100,

              child: ElevatedButton(onPressed: (){

                Navigator.pushNamed(context, 'Welcome');
              },
                  child: Icon(Icons.chevron_left,size: 50,)),
            )
          ],
        ),
      ),
    );
  }
}
