import 'dart:async';
import 'package:flutter/material.dart';

import '../blocs/AuthBloc.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  StreamSubscription streamSubscription;

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPages);
  }

  void navigationPages() {
    streamSubscription = authBloc.user.listen((data) {
      if (data?.uid != null) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        Navigator.pushReplacementNamed(context, '/auth');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildLogo(),
          SizedBox(
            height: 20.0,
          ),
          CircularProgressIndicator(),
          SizedBox(
            height: 10.0,
          ),
          _buildText()
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "DIDACTIC ROBOT",
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Anurati',
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildText() {
  return Center(
    child: Text("Please wait..."),
  );
}
