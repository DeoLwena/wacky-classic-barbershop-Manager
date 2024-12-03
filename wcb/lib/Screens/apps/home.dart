import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;
import 'InsideServices.dart' as inside;
import 'InsideHome.dart' as insidehome;


void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    insidehome.InsideServices(),
    Center(child: Text("Report")),
    inside.InsideServices(),
    Center(child: Text("Report")),
    Center(child: Text("settings")),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.redAccent,selectedItemColor: wigi.Red,unselectedItemColor: wigi.Blue,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station_sharp),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_color_outlined),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}