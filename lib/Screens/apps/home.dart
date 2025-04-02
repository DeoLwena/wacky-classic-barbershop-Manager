import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'services/InsideServices.dart' as inside;
import 'home/InsideHome.dart' as home;
import 'reports/InsideReports.dart' as Reports;
import 'inventory/InsideStock.dart' as Stock;
import 'package:wcb/Screens/apps/settings/InsideSettings.dart' as Settings;
import 'package:wcb/Screens/apps/profile/InsideProfile.dart' as profile;
import 'package:wcb/Landings/landing.dart' as land;

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
  int index = 1;

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      home.InsideHome(_onTabTapped),
      inside.InsideServices(),
      Reports.InsideReports(),
      Stock.InsideStock(),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(
        headerText: 'Hello, \n Manager Welcome',
        items: [
          wigi.DrawerItem(
              title: 'Profile',
              icon: Icons.person,
              onTap: (context) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile.InsideProfile()));
              }),
          wigi.DrawerItem(
              title: 'Settings',
              icon: Icons.settings,
              onTap: (context) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings.InsideSettings()));
              }),
          wigi.DrawerItem(
              title: 'Log Out',
              icon: Icons.logout_rounded,
              onTap: (context) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>land.Landing()));
              }),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        selectedItemColor: wigi.red,
        unselectedItemColor: wigi.blue,
        elevation: 2.0,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station_sharp),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_color_outlined),
            label: 'Reports',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.warehouse), label: 'Stock'),
        ],
      ),
    );
  }
}
