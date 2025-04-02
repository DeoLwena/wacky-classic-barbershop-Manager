import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wcb/Admin/home/home.dart' as home;
import 'package:wcb/Admin/inventory/new_stock.dart' as newstock;

class Add_Stock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    final bidhaa = ['joot', 'jot', 'jotty'];
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(headerText: 'Hello ,Admin', items: [
        wigi.DrawerItem(
            title: 'Home',
            icon: FontAwesomeIcons.house,
            onTap: (context) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home.AdminHome()));
            }),
        wigi.DrawerItem(
            title: 'Profile',
            icon: FontAwesomeIcons.person,
            onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Settings', icon: Icons.settings, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Log Out', icon: Icons.logout, onTap: (context) {})
      ]),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: screenheight * 0.05,
          ),
          wigi.mydropdown(listname: bidhaa, dropname: 'Bidhaa'),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.TextInput(lebo: 'weka Idadi'),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.CustomButton(rangi: wigi.blue, neno: 'Hifadhi', bonyeza: () {})
        ],
      )),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => newstock.newStock()));
        },
        child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Makes the container circular
              border: Border.all(color: wigi.blue, width: 10),
            ),
            child: FloatingActionButton(
                elevation: 00,
                child: Icon(
                  Icons.add,
                  size: screenwidth * 0.1,
                  color: Colors.white,
                ),
                backgroundColor: wigi.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => newstock.newStock()));
                })),
      ),
    );
  }
}
