import 'package:flutter/material.dart';

import '../../blocs/AuthBloc.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SETTINGS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: _buildSettingsPageBody(),
    );
  }

  Widget _buildSettingsPageBody() {
    return StreamBuilder(
        stream: authBloc.profile,
        builder: (context, snapshot) {
          return Container(
            child: ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  Image(
                    image: NetworkImage(authBloc.currentUser.photoUrl),
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    authBloc.currentUser.displayName,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text(
                    authBloc.currentUser.email,
                    style: Theme.of(context).textTheme.subhead,
                  )
                ]),
                SizedBox(height: 20.0),
                Divider(),
                ListTile(
                  title: Text('LOGOUT'),
                  leading: Icon(Icons.exit_to_app),
                  subtitle: Text("Deletes your login data from your device."),
                  onTap: () {
                    authBloc.signOut();
                    Navigator.pushReplacementNamed(context, "/auth");
                  },
                ),
                Divider(),
              ],
            ),
          );
        });
  }
}
