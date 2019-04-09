import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), title: Text('Trending')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    );
  }
}
