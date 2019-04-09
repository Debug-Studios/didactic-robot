import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './pages/settings_page.dart';
import './pages/home_page.dart';
import './pages/trending_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    TrendingPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: _pages[_selectedIndex]);
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: onBottomNavigationItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.homeOutline),
          activeIcon: Icon(MdiIcons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          title: Text('Trending'),
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.settingsOutline),
          activeIcon: Icon(MdiIcons.settings),
          title: Text('Settings'),
        ),
      ],
    );
  }

  void onBottomNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
