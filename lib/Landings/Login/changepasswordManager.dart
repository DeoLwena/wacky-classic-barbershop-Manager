import 'package:flutter/material.dart';
import 'package:wcb/Landings/Login/adminlogin.dart';
import 'package:wcb/Landings/Login/loginmid.dart';
import 'package:wcb/Landings//Login/managerlogin.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;

class Newpasswordm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: wigi.MyAppBar(kichwa: 'Enter New Password', rangi: wigi.blue),
        body: Column(children: [
          wigi.MyTextInput(
              label: 'Enter new password',
              iconi: Icons.lock,
              hintText: 'Password',
              textcolor: wigi.blue),
          wigi.MyTextInput(
              label: 'Re-enter the Password',
              iconi: Icons.lock,
              hintText: 'Repeat the password',
              textcolor: wigi.blue),
          wigi.CustomButton(
              rangi: wigi.blue,
              neno: 'Reset Password',
              bonyeza: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Managerlogin(),
                  ),
                );
              })
        ]));
  }
}
