import 'package:flutter/material.dart';
import 'package:wcb/Screens/apps/inventory/InsideStock.dart';
import 'package:wcb/Screens/apps/profile/InsideProfile.dart';
import 'package:wcb/Screens/apps/reports/InsideReports.dart';
import 'package:wcb/Screens/apps/services/InsideServices.dart';
import 'package:wcb/Screens/apps/settings/InsideSettings.dart';
import 'package:wcb/Screens/landing.dart';
import 'package:wcb/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/home.dart' as home;

class InsideHome extends StatefulWidget {
  @override
  State<InsideHome> createState() => _InsideHomeState();
}

class _InsideHomeState extends State<InsideHome> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[ wigi.Searchbar(hint: 'Search',),Container(height: screenheight*0.05),
          Column(
            children: [              Row(children: [
                Container(width: screenwidth * 0.03,),
                Flexible(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Hello Manager,',
                    style: TextStyle(color: wigi.Blue, fontSize: screenheight * 0.03),
                  ),
                ),
                Container(width: screenwidth * 0.2)])
              ,
              Container(height: screenheight *0.04,),
              Row(
                children: [
                  Flexible(child: wigi.MyCard(imagename: 'profile.jpg' , Huduma: 'Profile')),
                  Flexible(child: wigi.MyCard(imagename: 'services.jpg', Huduma: 'Service'))
                ],
              ),
              Row(
                children: [
                  Flexible(child: wigi.MyCard(imagename: 'report.jpg', Huduma: 'Report')),
                  Flexible(child: wigi.MyCard(imagename: 'stock.jpg', Huduma: 'Stock')),
                ],
              ),
              Row(
                children: [
                  Flexible(child: wigi.MyCard(imagename: 'settings.jpg', Huduma: 'Settings')),
                  Flexible(child: wigi.
                  MyCard(imagename: 'alpha.png', Huduma: 'Log Out'))
                ],
              ),
            ],
          ),]
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        wigi.Searchbar(
          hint: 'Search',
        ),
        Container(height: screenheight * 0.05),
        Column(
          children: [
            Row(children: [
              Container(
                width: screenwidth * 0.03,
              ),
              Flexible(
                child: Text(
                  textAlign: TextAlign.center,
                  'Hello Manager,',
                  style: TextStyle(
                      color: wigi.Blue, fontSize: screenheight * 0.03),
                ),
              ),
              Container(width: screenwidth * 0.2)
            ]),
            Container(
              height: screenheight * 0.04,
            ),
            Row(
              children: [
                Flexible(
                  child: wigi.MyCard(
                      imagename: 'profile.jpg',
                      Huduma: 'Profile',
                      function: () {
                        setState(() {});
                      }),
                ),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'services.jpg',
                        Huduma: 'Service',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InsideServices()));
                        }))
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'report.jpg',
                        Huduma: 'Report',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InsideReports()));
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'stock.jpg',
                        Huduma: 'Stock',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InsideStock()));
                        })),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'settings.jpg',
                        Huduma: 'Settings',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InsideSettings()));
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'alpha.png',
                        Huduma: 'Log Out',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Landing()));
                        }))
              ],
            ),
          ],
        ),
      ]),
    ));
  }
}
