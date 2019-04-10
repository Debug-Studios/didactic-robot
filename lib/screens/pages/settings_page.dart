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
        stream: authBloc.user,
        builder: (context, snapshot) {
          return Container(
            child: ListView(
              children: <Widget>[
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
