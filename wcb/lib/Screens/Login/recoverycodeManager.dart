import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/changepasswordAdmin.dart';
import 'package:wcb/Screens/Login/changepasswordManager.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Confirmationm extends StatelessWidget {
  const Confirmationm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: wigi.MyAppBar(kichwa: 'Confirmation Code', rangi: wigi.Blue),
      body: Column(children: [wigi.MyTextInput(label: 'Enter the code', iconi: Icons.phone, hintText: 'Confirmation Code', textcolor: wigi.Blue),
      wigi.CustomButton(rangi: wigi.Blue, neno: 'Confirm', bonyeza: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Newpasswordm(),
    ),
    );})]


    ));
  }
}
