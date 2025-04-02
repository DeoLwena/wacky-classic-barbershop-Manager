import 'package:flutter/material.dart';
import 'package:wcb/Landings/Login/adminlogin.dart';
import 'package:wcb/Landings/Login/managerlogin.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;

class Landingl extends StatelessWidget {
  const Landingl({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return MaterialApp(
        home: Scaffold(
      appBar: wigi.MyAppBar(kichwa: 'Login', rangi: wigi.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [Container(height: height * 0.00001),
          Container(height:height *0.2 ,
              child: const Image(image: AssetImage('images/alpha.png'))),
          Container(height: height * 0.02),
          wigi.CustomButton(
            rangi: wigi.blue,
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
          wigi.CustomButton(
            rangi: wigi.red,
            neno: 'Manager',
            bonyeza: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Managerlogin(),
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
