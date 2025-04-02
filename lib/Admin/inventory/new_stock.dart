import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Admin/home/home.dart' as home;

class newStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(headerText: 'Hello Admin', items: [
        wigi.DrawerItem(
            title: 'Home',
            icon: Icons.home,
            onTap: (context) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home.AdminHome()));
            })
      ]),
      body: Column(
        children: [SizedBox(
          height: screenheight * 0.02,
        ),
          wigi.mydropdown(
              listname: ['check from db', 'check form db'],
              dropname: 'Kundi la Bidhaa'),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.TextInput(lebo: 'Jina la bidhaa'),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.TextInput(
            lebo: 'Bei ya Kununua',
          ),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.TextInput(
            lebo: 'Bei Kuuza',
          ),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.TextInput(lebo: 'Idadi'),
          SizedBox(
            height: screenheight * 0.02,
          ),
          wigi.CustomButton(
              rangi: wigi.blue, neno: 'Hifadhi Bidhaa Mpya', bonyeza: () {}) //
        ],
      ),
    );
  }
}
