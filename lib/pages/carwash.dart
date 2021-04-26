import 'package:flutter/material.dart';
import 'package:madmax2/components/commonDrawer.dart';

void main() {
  runApp(
    CarWashApp(),
  );
}

class CarWashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        title: Text('CarWashApp'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1605164599901-f8a1464a2c87?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
            ),
          ],
        ),
      ),
    );
  }
}
