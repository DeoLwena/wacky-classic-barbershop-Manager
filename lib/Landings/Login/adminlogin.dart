import 'package:flutter/material.dart';
import 'package:wcb/Admin/home/home.dart';
import 'package:wcb/Landings/Login/forgotpasswordAdmin.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.MyAppBar(
        kichwa: 'Login Admin',
        rangi: wigi.blue, // Use Colors.blue or your custom color
      ),
      body: Column(children: [
        Container(
          height: 50.0,
        ),
        wigi.MyTextInput(
          label: 'Enter Your e-Mail',
          iconi: Icons.account_circle_outlined,
          hintText: 'e-mail',
          textcolor: wigi.blue,
        ),
        wigi.MyTextInput(
          label: 'Enter Your Password',
          iconi: Icons.lock,
          hintText: 'Password',
          textcolor: wigi.blue,
        ),
        wigi.CustomButton(
            rangi: wigi.blue,
            neno: 'Log In',
            bonyeza: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminHome(),
                  ));
            }),
        wigi.CustomButton(
            rangi: wigi.red,
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
