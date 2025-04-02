import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/settings/InsideSettings.dart' as Settings;
import 'package:wcb/Screens/apps/profile/InsideProfile.dart' as profile;
import 'package:wcb/Screens/apps/home.dart' as home;
import 'package:wcb/Landings/landing.dart' as land;



class Hairservices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MyForm();
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override

  // defining global kwy for the form

  final _formkey = GlobalKey<FormState>();
  String? _selectedItem; //store the selected item
  String? _numberInput; //for number input

  //List of items for dropdown
  final List<String> _levelone = [
    'Dread',
    'dawa',
  ];
  final List<String> _leveltwo = ['kuosha', 'kusokota', 'liwa', 'pico'];
  void _submitForm(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('saved',textAlign: TextAlign.center),
        backgroundColor: wigi.red,
        duration: Duration(seconds: 3),
      ),
    );
  }

  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings.InsideSettings()));
                }),
            wigi.DrawerItem(
                title: 'Log Out',
                icon: Icons.logout_rounded,
                onTap: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>land.Landing()));
                }),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wigi.mydropdown(listname: _levelone,dropname: 'Chagua Huduma',),
                  SizedBox(height: screenheight*0.05,),
                  wigi.mydropdown(listname: _leveltwo,dropname: 'Chagua kipengele',),
                  SizedBox(height: screenheight*0.05,),
                  wigi.NumberInput(lebo: 'weka idadi'),
                  SizedBox(height: screenheight*0.05,),
                  wigi.CustomButton(rangi: wigi.blue, neno: 'Save', bonyeza: (){_submitForm(context);}),
                ],
              )),
        ));
  }
}
