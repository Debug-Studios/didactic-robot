import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DidacticRobot extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Didactic Robot',
      home: Scaffold(
        appBar: AppBar(title: Text("Didactic Robot")),
        body: Center(child: Text("Testing Testing")),
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'HKGrotesk',
        accentColor: Colors.yellowAccent,
      ),
      routes: {},
    );
  }
}
