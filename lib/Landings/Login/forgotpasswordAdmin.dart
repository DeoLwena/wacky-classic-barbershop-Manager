import 'package:flutter/material.dart';
import 'package:wcb/Landings//Login/recoverycodeAdmin.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;

class Recovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            wigi.MyAppBar(kichwa: 'Password recovery -Admin', rangi: wigi.red),
        body: Column(children: [
          Container(
            height: 50.0,
          ),
          wigi.MyTextInput(
              label: 'Enter your e-mail to recover the password',
              iconi: Icons.person,
              hintText: 'e-mail',
              textcolor: wigi.blue),
          wigi.CustomButton(
            rangi: wigi.red,
            neno: 'get code',
            bonyeza: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const Confirmation(),
    ),
    );},
          )
        ]));
  }
}
