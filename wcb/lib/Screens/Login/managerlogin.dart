import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login/forgotpasswordManager.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Managerlogin extends StatelessWidget {
  const Managerlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.MyAppBar(kichwa: 'Login Manager', rangi: wigi.Red),
      body: Column(children: [Container(height: 50.0,),
        wigi.MyTextInput(
          label: 'Enter Your e-Mail',
          iconi: Icons.account_circle_outlined,
          hintText: 'e-mail',
          textcolor: wigi.Blue),
        wigi.MyTextInput(
          label: 'Enter Your Password',
          iconi: Icons.lock,
          hintText: 'Password',
          textcolor: wigi.Blue),
        wigi.CustomButton(rangi: wigi.Red, neno: 'Log In', bonyeza: (){

        }),
        wigi.CustomButton(rangi: wigi.Blue, neno: 'Forgot Password', bonyeza: (){
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
