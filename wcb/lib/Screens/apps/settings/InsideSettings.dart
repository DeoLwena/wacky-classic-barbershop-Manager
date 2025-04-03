import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideSettings extends StatelessWidget {
  const InsideSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          height: screenheight * 0.03,
        ),
        Row(
          children: [
            Container(width: screenwidth * 0.03),
            CircleAvatar(
              backgroundImage: AssetImage('images/g.jpeg'),
              radius: screenwidth * 0.07,
            ),
            Container(width: screenwidth * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perida Chiwanyi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenheight * 0.025,
                      color: wigi.Blue),
                ),
                Text('Manager',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: screenheight * 0.027,
                        color: wigi.Blue))
              ],
            )
          ],
        ),

        Container(height: screenheight* 0.03,),
        Container(color: Colors.black38,height: screenheight *0.001,),
        Container(height: screenheight* 0.03,),

        wigi.Badges(iconi: CupertinoIcons.sun_min_fill,head: 'Theme',explanation: 'Change light mode (dark/light)',),
        Container(height: screenheight* 0.03,),
        wigi.Badges(iconi: Icons.account_box,head: 'Profile name',explanation: 'Change Profile name',),
        Container(height: screenheight* 0.03,),
        wigi.Badges(iconi: Icons.email,head: 'e- Mail',explanation: 'Change e-mail',),
        Container(height: screenheight* 0.03,),
        wigi.Badges(iconi: CupertinoIcons.phone_circle_fill,head: 'Phone number ',explanation: 'Change phone number',),
        Container(height: screenheight* 0.03,),
        wigi.Badges(iconi: CupertinoIcons.padlock_solid,head: 'Passwords ',explanation: 'Change password',),
        Container(height: screenheight* 0.03,),
        wigi.Badges(iconi: Icons.output,head: 'Log out ',explanation: 'Loging out',),
      ]),
    ));
  }
}
