// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
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