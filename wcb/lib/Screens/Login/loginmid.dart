import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/adminlogin.dart';
import 'package:wcb/Screens/Login/managerlogin.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Landingl extends StatelessWidget {
  const Landingl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar:  wigi.MyAppBar(kichwa: 'Login', rangi: wigi.Blue),
      body: Column(
        children: [Container(height: 200.0,),
          wigi.CustomButton(
            rangi: wigi.Blue,
            neno: 'Admin',
            bonyeza: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdminLogin(),
                ),
              );
            },
          ),
          wigi.CustomButton(rangi: wigi.Red, neno: 'Manager', bonyeza: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Managerlogin(),
              ),
            );
          },)
        ],
      ),
    ));
  }
}
