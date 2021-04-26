import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:madmax2/components/commonDrawer.dart';
import './pages/carwash.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Myapp(),
      '/second': (context) => CarWashApp(),
      // '/third': (context) => ThirdRoute(),
    },
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[800],
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'Mad Max 2',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: CommonDrawer(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 75.0,
                backgroundImage:
                    AssetImage('../images/PXL_20210423_080518379.PORTRAIT.jpg'),
              ),
              Text(
                'Legal Dexter',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '2018-CS-115',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.deepPurple.shade100,
                ),
              ),
              Card(
                //padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20.0,
                    color: Colors.deepPurple,
                  ),
                  title: Text(
                    '0323232342',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                //padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20.0,
                    color: Colors.deepPurple,
                  ),
                  title: Text(
                    'legaldexter@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
