import 'package:flutter/material.dart';

void main() => runApp(DidacticRobot());

class DidacticRobot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Didactic Robot',
      home: Scaffold(
        appBar: AppBar(title: Text("Didactic Robot")),
        body: Center(child: Text("Testing Testing")),
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'HKGrotesk',
        accentColor: Colors.amberAccent,
      ),
    );
  }
}
