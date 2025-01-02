import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;
import 'services/InsideServices.dart' as inside;
import 'home/InsideHome.dart' as home;
import 'reports/InsideReports.dart' as Reports;
import 'inventory/InsideStock.dart' as Stock;
import 'settings/InsideSettings.dart' as Settings;
import 'profile/InsideProfile.dart' as profile;



void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  int index = 0;
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    home.InsideHome(),
    profile.InsideProfile(),
    inside.InsideServices(),
    Reports.InsideReports(),
    Stock.InsideStock(),
    Settings.InsideSettings(),

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
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.redAccent,selectedItemColor: wigi.Red,unselectedItemColor: wigi.Blue,elevation: 2.0,
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
            icon: Icon(Icons.warehouse),
            label: 'Stock'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),


        ],
      ),
    );
  }
}