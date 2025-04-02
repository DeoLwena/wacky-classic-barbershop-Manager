import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class employeeRepo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(headerText: 'Hello, Admin', items: [
        wigi.DrawerItem(title: 'Home', icon: Icons.house, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Profile',
            icon: FontAwesomeIcons.person,
            onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Settings', icon: Icons.settings, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Log Out', icon: Icons.logout, onTap: (context) {}),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: height * 0.05),
          wigi.stripTile(ikon: Icons.bar_chart, texti: 'Perfomance',bonyeza: (){},),
          SizedBox(height: height * 0.03),
          wigi.stripTile(ikon: Icons.monetization_on_outlined, texti: 'Salary',bonyeza: (){}),
          SizedBox(height: height * 0.03),

        ],
      ),
    );
  }
}
