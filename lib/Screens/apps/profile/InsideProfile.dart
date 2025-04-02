import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/settings/InsideSettings.dart' as Settings;
import 'package:wcb/Screens/apps/profile/InsideProfile.dart' as profile;
import 'package:wcb/Screens/apps/home.dart' as home;
import 'package:wcb/Landings/landing.dart' as land;

class InsideProfile extends StatelessWidget {
  const InsideProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: wigi.InsideAppBar(rangi: Colors.white),
        drawer: wigi.MyDrawer(
          headerText: 'Hello, Manager',
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
        body: Column(children: [
          Container(height: screenheight * 0.02),
          CircleAvatar(
            backgroundColor: Colors.white,
            foregroundImage: AssetImage('images/profile.png'),
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
              function: () {},
              iconi: CupertinoIcons.profile_circled,
              head: 'Name',
              explanation: 'Manager'),
          Container(height: screenheight * 0.02),
          wigi.Badges(
              function: () {},
              iconi: CupertinoIcons.phone_circle_fill,
              head: 'Phone Number',
              explanation: '07XXXXXXX'),
          Container(height: screenheight * 0.2),
          wigi.CustomButton(
              rangi: wigi.red,
              neno: 'Log Out',
              bonyeza: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => land.Landing()));
              })
        ]));
  }
}
