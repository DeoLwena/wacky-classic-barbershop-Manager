import 'package:flutter/material.dart';
import 'package:wcb/Landings/Login/forgotpasswordManager.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Screens/apps/home.dart';

class Managerlogin extends StatelessWidget {
  const Managerlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.MyAppBar(kichwa: 'Login Manager', rangi: wigi.red),
      body: Column(children: [
        Container(
          height: 50.0,
        ),
        wigi.MyTextInput(
            label: 'Enter Your e-Mail',
            iconi: Icons.account_circle_outlined,
            hintText: 'e-mail',
            textcolor: wigi.blue),
        wigi.MyTextInput(
            label: 'Enter Your Password',
            iconi: Icons.lock,
            hintText: 'Password',
            textcolor: wigi.blue),
        wigi.CustomButton(
            rangi: wigi.red,
            neno: 'Log In',
            bonyeza: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            }),
        wigi.CustomButton(
            rangi: wigi.blue,
            neno: 'Forgot Password',
            bonyeza: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Recoverym(),
                ),
              );
            })
      ]),
    );
  }
}
