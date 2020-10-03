import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Row and Column Widgets"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.black),
                  color: Colors.orange,
                ),
                height: 100.0,
                width: 100.0,
              ),
              Container(),
            ],
          ),
          Column(),
          Column(),
        ],
      ),
    ));
  }
}
