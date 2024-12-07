import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideReports extends StatelessWidget {
  const InsideReports({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[ wigi.Searchbar(),Container(height: screenheight*0.05),
                Column(
                  children: [
                    Row(children: [
                      Flexible(
                        child: Text(
                          textAlign: TextAlign.center,
                          'Hello Manager,\nWelcome to WCB',
                          style: TextStyle(color: wigi.Blue, fontSize: 13),
                        ),
                      ),
                      Container(width: screenwidth * 0.2)])
                    ,
                    Row(
                      children: [
                        Flexible(child: wigi.MyCard(imagename: 'profile.jpg' , Huduma: 'Profile')),
                        Flexible(child: wigi.MyCard(imagename: 'Serives.webp', Huduma: 'Service'))
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(child: wigi.MyCard(imagename: 'report.jpeg', Huduma: 'Report')),
                        Flexible(child: wigi.MyCard(imagename: 'stock.jpeg', Huduma: 'Stock')),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(child: wigi.MyCard(imagename: 'settings.jpeg', Huduma: 'settings')),
                        Flexible(child: wigi.MyCard(imagename: 'alpha.png', Huduma: 'Log Out'))
                      ],
                    ),
                  ],
                ),]
          ),
        )

    );
  }
}
