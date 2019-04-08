import 'package:flutter/material.dart';
import './screens/login_screen.dart';

class DidacticRobot extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Didactic Robot',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'HKGrotesk',
        primarySwatch: Colors.grey,
        accentColor: Colors.yellowAccent,
      ),
      routes: {
        "/": (context) => LoginScreen(),
      },
    );
  }
}
