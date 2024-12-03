import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return  MaterialApp(
        home: SingleChildScrollView(
      child: Column(children: [
        Column(
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'UserName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            Text(
              'AppServices',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              textAlign: TextAlign.right,
            )
          ],
        ),
        Row(children: [
          wigi.MyCard(imagename: 'servives.webp', Huduma: 'Services'),
          Container(width: screenwidth*0.2),
          wigi.MyCard(imagename: 'profile.jpg', Huduma: 'Profile'),
          Container(width: screenwidth*0.2),
          wigi.MyCard(imagename: 'profile.jpg', Huduma: 'Report'),
          Container(width: screenwidth*0.2),
          wigi.MyCard(imagename: 'settings.jpeg', Huduma: 'Settings'),
          Container(width: screenwidth*0.2),
          wigi.MyCard(imagename: 'stock.jpeg', Huduma: 'Stock'),
          Container(width: screenwidth*0.2),
        ])

      ]),
    ));
  }
}
