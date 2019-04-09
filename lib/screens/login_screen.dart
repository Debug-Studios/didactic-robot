import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // _buildBackgroundImage(),
          _buildMainTitle(),
          SizedBox(
            height: 150.0,
          ),
          _buildBottomButtons(context),
        ],
      ),
    );
  }

  Widget _buildMainTitle() {
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
          SizedBox(height: 10.0),
          Text(
            "by debug studios",
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildGoogleButton(context),
        SizedBox(height: 20.0),
        _buildPhoneButton(context),
      ],
    );
  }

  Widget _buildPhoneButton(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      minWidth: 300.0,
      child: RaisedButton.icon(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        color: Colors.red,
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
      minWidth: 300.0,
      child: RaisedButton.icon(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        color: Colors.white,
        onPressed: () {},
        label: Text(
          "Login with Google",
          style: TextStyle(color: Colors.red, fontSize: 20.0),
        ),
        icon: Icon(MdiIcons.google, color: Colors.red),
      ),
    );
  }
}
