import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/login_screen.dart';
import './screens/home_screen.dart';
import './screens/splash_screen.dart';

class DidacticRobot extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Didactic Robot',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'HKGrotesk',
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.redAccent,
      ),
      routes: {
        "/": (context) => SplashScreen(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
