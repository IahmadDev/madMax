import 'dart:ui';

import 'package:flutter/material.dart';
import './pages/carwash.dart';
import './components/appBar.dart';

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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 75.0,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1383023790213447680/NpwwDrz0_400x400.jpg'),
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
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.psdvault.com/img/2018/02/mad-max-text-flatten.jpg'),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                title: Text('A1A Car Wash App'),
                onTap: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
