import 'package:flutter/material.dart';
import 'package:wcb/Screens/apps/inventory/InsideStock.dart';
import 'package:wcb/Screens/apps/profile/InsideProfile.dart';
import 'package:wcb/Screens/apps/reports/InsideReports.dart';
import 'package:wcb/Screens/apps/services/InsideServices.dart';
import 'package:wcb/Screens/apps/settings/InsideSettings.dart';
import 'package:wcb/Landings/landing.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/home.dart' as home;
import 'package:wcb/Screens/apps/profile/InsideProfile.dart' as profile;

class InsideHome extends StatefulWidget {
  final Function(int) navigateTo;

  InsideHome(this.navigateTo);

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        wigi.Searchbar(
          hint: 'Search',
        ),
        Container(height: screenheight * 0.01),
        Column(
          children: [
            Row(children: [
              Container(
                width: screenwidth * 0.03,
              ),
              Flexible(
                child: Text(
                  textAlign: TextAlign.center,
                  'Welcome',
                  style: TextStyle(
                      color: wigi.blue, fontSize: screenheight * 0.02),
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
                      imagename: 'profile.png',
                      huduma: 'Profile',
                      function: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => profile.InsideProfile()));
                        })
                ),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'services.png',
                        huduma: 'Service',
                        function: () {
                          widget.navigateTo(1);
                        }))
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'repo.png',
                        huduma: 'Report',
                        function: () {widget.navigateTo(2);
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'stock.png',
                        huduma: 'Stock',
                        function: () {
                          widget.navigateTo(3);
                        })),
              ],
            )
          ],
        ),
      ]),
    ));
  }
}
