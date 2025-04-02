import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

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
              ),
        )
    );
  }
}
