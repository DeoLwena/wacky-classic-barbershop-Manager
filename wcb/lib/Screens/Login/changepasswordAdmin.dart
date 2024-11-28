import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/adminlogin.dart';
import 'package:wcb/Screens/Login/loginmid.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Newpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: wigi.MyAppBar(kichwa: 'Enter New Password', rangi: wigi.Red),
        body: Column(children: [
          wigi.MyTextInput(
              label: 'Enter new password',
              iconi: Icons.lock,
              hintText: 'Password',
              textcolor: wigi.Blue),
          wigi.MyTextInput(
              label: 'Re-enter the Password',
              iconi: Icons.lock,
              hintText: 'Repeat the password',
              textcolor: wigi.Blue),
          wigi.CustomButton(
              rangi: wigi.Red,
              neno: 'Reset Password',
              bonyeza: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminLogin(),
                  ),
                );
              })
        ]));
  }
}
