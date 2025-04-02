import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Landings/Login/changepasswordAdmin.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: wigi.MyAppBar(kichwa: 'Confirmation Code', rangi: wigi.red),
      body: Column(children: [wigi.MyTextInput(label: 'Enter the code', iconi: Icons.phone, hintText: 'Confirmation Code', textcolor: wigi.blue),
      wigi.CustomButton(rangi: wigi.red, neno: 'Confirm', bonyeza: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Newpassword(),
    ),
    );})]


    ));
  }
}
