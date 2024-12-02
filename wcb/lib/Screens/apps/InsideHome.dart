import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Insidehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SingleChildScrollView(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.left,
            'Hello Manager,\nWelcome to WCB APP',
            style: TextStyle(
                color: wigi.Blue, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              wigi.MyCard(imagename: 'Ras.png', Huduma: 'Hair services'),
              Container(width: 15),
              wigi.MyCard(imagename: 'massage.png', Huduma: 'Skin')
            ],
          ),Container(width: 15),
           Row(
            children: [
              wigi.MyCard(imagename: 'kucha.png', Huduma: 'Nails'),
              Container(width: 15),
              wigi.MyCard(imagename: 'haircut colored.png', Huduma: 'Hair Cuts')
            ],
          )
        ],
      ),
    ));
  }
}
