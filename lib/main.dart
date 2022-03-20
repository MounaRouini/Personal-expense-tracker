import 'package:flutter/material.dart';

import './user-transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myfirstapp'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 7,
                child: Text("chart"),
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
