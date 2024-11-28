import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/changepasswordAdmin.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: wigi.MyAppBar(kichwa: 'Confirmation Code', rangi: wigi.Red),
      body: Column(children: [wigi.MyTextInput(label: 'Enter the code', iconi: Icons.phone, hintText: 'Confirmation Code', textcolor: wigi.Blue),
      wigi.CustomButton(rangi: wigi.Red, neno: 'Confirm', bonyeza: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Newpassword(),
    ),
    );})]


    ));
  }
}
