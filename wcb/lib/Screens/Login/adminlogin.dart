import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/forgotpasswordAdmin.dart';
import 'package:wcb/Screens/apps/home.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.MyAppBar(
        kichwa: 'Login Admin',
        rangi: wigi.Blue, // Use Colors.blue or your custom color
      ),
      body: Column(children: [
        Container(
          height: 50.0,
        ),
        wigi.MyTextInput(
          label: 'Enter Your e-Mail',
          iconi: Icons.account_circle_outlined,
          hintText: 'e-mail',
          textcolor: wigi.Blue,
        ),
        wigi.MyTextInput(
          label: 'Enter Your Password',
          iconi: Icons.lock,
          hintText: 'Password',
          textcolor: wigi.Blue,
        ),
        wigi.CustomButton(
            rangi: wigi.Blue,
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
            rangi: wigi.Red,
            neno: 'Forgot Password',
            bonyeza: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Recovery(),
                ),
              );
            })
      ]),
    );
  }
}
