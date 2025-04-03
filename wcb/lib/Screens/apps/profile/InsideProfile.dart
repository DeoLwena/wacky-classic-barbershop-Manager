import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideProfile extends StatelessWidget {
  const InsideProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Column(children: [
      Container(height: screenheight * 0.02),
      CircleAvatar(
        backgroundImage: AssetImage('images/g.jpeg'),
        radius: screenwidth * 0.2,
      ),
      Container(
        height: screenheight * 0.02,
      ),
      Container(
        color: Colors.black38,
        height: screenheight * 0.001,
        width: screenwidth * 0.8,
      ),
      Container(height: screenheight * 0.02),
      wigi.Badges(
          iconi: CupertinoIcons.profile_circled,
          head: 'Name',
          explanation: 'Perida Chiwanyi'),
      Container(height: screenheight * 0.02),
      wigi.Badges(
          iconi: CupertinoIcons.phone_circle_fill,
          head: 'Phone Number',
          explanation: '0799229933'),
          Container(height: screenheight*0.3,),
          wigi.CustomButton(rangi: wigi.Red, neno: 'Log Out', bonyeza: (){})
    ]));
  }
}
