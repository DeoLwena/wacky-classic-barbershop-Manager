import 'package:flutter/material.dart';
import 'package:wcb/Screens/SignUp/signupmid.dart';
import 'package:wcb/custom_widgets.dart' as wigi;
import 'Login/loginmid.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('images/alpha.png'),
            ),
            wigi.CustomButton(
              rangi: wigi.Blue,
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
              rangi: wigi.Red,
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
