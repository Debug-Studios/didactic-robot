import 'package:flutter/material.dart';

import './screens/login_screen.dart';
import './screens/home_screen.dart';
import './screens/splash_screen.dart';
import './blocs/AuthBloc.dart';

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
      home: SplashScreen(),
      routes: {
        "/auth": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
