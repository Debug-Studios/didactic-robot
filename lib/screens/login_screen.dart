import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildBackgroundImage(),
          _buildMainTitle(),
          _buildBottomButtons(),
        ],
      ),
    );
  }

  Widget _buildMainTitle() {
    return Positioned(
      top: 150,
      left: 50,
      right: 50,
      child: Center(
        child: Text(
          "DIDACTIC ROBOT",
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.unsplash.com/photo-1516148066593-477d571e507f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200'),
        ),
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Positioned(
      // padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
      bottom: 50,
      left: 50,
      right: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildGoogleButton(),
          SizedBox(height: 10.0),
          _buildPhoneButton(),
        ],
      ),
    );
  }

  Widget _buildPhoneButton() {
    return RaisedButton.icon(
      onPressed: () {},
      label: Text(
        'Sign in With Phone',
        textScaleFactor: 1.2,
      ),
      icon: Icon(Icons.phone_android),
    );
  }

  Widget _buildGoogleButton() {
    return RaisedButton.icon(
        color: Colors.lightBlueAccent,
        onPressed: () {},
        label: Text(
          "Login with Google",
          textScaleFactor: 1.2,
        ),
        icon: Icon(MdiIcons.google));
  }
}
