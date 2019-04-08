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
          _buildBottomButtons(context),
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
            fontFamily: 'Anurati',
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
              'https://images.pexels.com/photos/209209/pexels-photo-209209.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
        ),
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildGoogleButton(context),
          SizedBox(height: 20.0),
          _buildPhoneButton(context),
        ],
      ),
    );
  }

  Widget _buildPhoneButton(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton.icon(
        onPressed: () {},
        label: Text(
          'Login with Phone',
          style: Theme.of(context).textTheme.title,
        ),
        icon: Icon(Icons.phone_android),
      ),
    );
  }

  Widget _buildGoogleButton(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton.icon(
        color: Colors.deepOrange,
        onPressed: () {},
        label: Text(
          "Login with Google",
          style: Theme.of(context).textTheme.title,
        ),
        icon: Icon(MdiIcons.google),
      ),
    );
  }
}
