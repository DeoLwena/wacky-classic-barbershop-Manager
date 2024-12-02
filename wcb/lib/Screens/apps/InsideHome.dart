import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Insidehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello Manager,\nWelcome to WCB APP',style: TextStyle(color: wigi.Blue,fontSize: 10.0,fontFamily: "sa"),),
            Row(
              children: [wigi.MyCard(imagename: 'Ras.png', Huduma: 'Hair services'),wigi.MyCard(imagename: 'massage.png', Huduma: 'Skin')],
            ),
          Row(children: [wigi.MyCard(imagename: 'kucha.png', Huduma: 'Nails'),wigi.MyCard(imagename: 'haircut colored.png', Huduma: 'Hair Cuts')],)],
    ));
  }
}
