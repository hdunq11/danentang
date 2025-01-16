import 'package:flutter/material.dart';

void main() {
  runApp(ImRich());
}
class ImRich extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
backgroundColor: Colors.blueGrey[900],
        title: Center(
    child: Text('Im rich',
    style: TextStyle(
    color: Colors.white,
    letterSpacing: 3.0,
    ),
    ),
    ),
      ),
      ),
    );
  }
}
