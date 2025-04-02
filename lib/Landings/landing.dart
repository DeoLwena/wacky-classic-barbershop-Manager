import 'package:flutter/material.dart';
import 'package:wcb/Landings/SignUp/signupmid.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import '../Landings/Login/loginmid.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: height*0.2,
              child: const Image(
                image: AssetImage('images/alpha.png'),
              ),
            ),
            Container(height: height*0.02),
            wigi.CustomButton(
              rangi: wigi.blue,
              neno: 'Sign Up',
              bonyeza: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Landings(),
                  ),
                );
              },
            ),
            wigi.CustomButton(
              rangi: wigi.red,
              neno: 'Log In',
              bonyeza: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Landingl(),
                  ),
                );
              },
            ),
                  ],
        ),
      ),
    );
  }
}
