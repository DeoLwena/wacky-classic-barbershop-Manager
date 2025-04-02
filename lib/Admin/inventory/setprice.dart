import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class setPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(headerText: 'Hello , Admin', items: [
        wigi.DrawerItem(
            title: 'Home', icon: Icons.home_filled, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Profile',
            icon: FontAwesomeIcons.person,
            onTap: (context) {})
      ]),
      body: Column(
        children: [
          SizedBox(
            height: screenheight * 0.05,
          ),
          wigi.mydropdown(
              listname: ['fetch 1', 'fetch 2', 'fetch 2'],
              dropname: 'Chagua Bidhaa'),
          SizedBox(height: screenheight * 0.05),
          wigi.TextInput(lebo: 'Bei'),
          SizedBox(height: screenheight * 0.05),
          wigi.CustomButton(rangi: wigi.blue, neno: 'Hifadhi Bei', bonyeza: (){})
        ],
      ),
    );
  }
}
