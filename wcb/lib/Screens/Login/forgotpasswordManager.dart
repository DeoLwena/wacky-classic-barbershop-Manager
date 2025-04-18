import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/recoverycodeAdmin.dart';
import 'package:wcb/Screens/Login/recoverycodeManager.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Recoverym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            wigi.MyAppBar(kichwa: 'Password recovery -Admin', rangi: wigi.Blue),
        body: Column(children: [
          Container(
            height: 50.0,
          ),
          wigi.MyTextInput(
              label: 'Enter your e-mail to recover the password',
              iconi: Icons.person,
              hintText: 'e-mail',
              textcolor: wigi.Blue),
          wigi.CustomButton(
            rangi: wigi.Blue,
            neno: 'get code',
            bonyeza: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Confirmationm(),
    ),
    );},
          )
        ]));
  }
}
