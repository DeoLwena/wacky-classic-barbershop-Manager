import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/settings/InsideSettings.dart' as Settings;
import 'package:wcb/Screens/apps/profile/InsideProfile.dart' as profile;
import 'package:wcb/Screens/apps/home.dart' as home;
import 'package:wcb/Landings/landing.dart' as land;

class InsideSettings extends StatelessWidget {
  const InsideSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: wigi.InsideAppBar(rangi: Colors.white),
        drawer: wigi.MyDrawer(
          headerText: 'Hello, \n Admin Welcome',
          items: [
            wigi.DrawerItem(
                title: 'Home',
                icon: Icons.home,
                onTap: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home.Home()));
                }),
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
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              height: screenheight * 0.03,
            ),
            Row(
              children: [
                Container(width: screenwidth * 0.03),
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile.png'),
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
                          fontSize: screenheight * 0.02,
                          color: wigi.blue),
                    ),
                    Text('Manager',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: screenheight * 0.02,
                            color: wigi.blue))
                  ],
                )
              ],
            ),
            Container(
              height: screenheight * 0.03,
            ),
            Container(
              color: Colors.black38,
              height: screenheight * 0.001,
            ),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
              iconi: CupertinoIcons.sun_min_fill,
              head: 'Theme',
              explanation: 'Change light mode (dark/light)',
              function: () {},
            ),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
                iconi: Icons.account_box,
                head: 'Profile name',
                explanation: 'Change Profile name',
                function: () {}),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
                iconi: Icons.email,
                head: 'e- Mail',
                explanation: 'Change e-mail',
                function: () {}),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
                iconi: CupertinoIcons.phone_circle_fill,
                head: 'Phone number ',
                explanation: 'Change phone number',
                function: () {}),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
                iconi: CupertinoIcons.padlock_solid,
                head: 'Passwords ',
                explanation: 'Change password',
                function: () {}),
            Container(
              height: screenheight * 0.03,
            ),
            wigi.Badges(
                iconi: Icons.output,
                head: 'Log out ',
                explanation: 'Loging out',
                function: () { }),
          ]),
        ));
  }
}
