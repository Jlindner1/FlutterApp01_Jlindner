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
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    color: Colors.orangeAccent,
                  ),
                  height: 100.0,
                  width: 100.0,
                  //margin: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Container 1"),
                  ),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(0.785398),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      height: 100.0,
                      width: 100.0,
                      //margin: EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Container 2"),
                      )),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Container 3"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Container 4"),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 47,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Container 5",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Con 6",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
