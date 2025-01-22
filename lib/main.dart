import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                      "images/dungh.jpg"),
                ),
                SizedBox(height: 20,),
                Text("Dung Hoang", style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 25,
                  fontWeight: FontWeight.w500,), textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      "(+84) 387351354", style: TextStyle(fontSize: 18,),),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      "dungh@gmail.com", style: TextStyle(fontSize: 18,),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}