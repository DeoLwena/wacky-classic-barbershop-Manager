import 'package:flutter/material.dart';
import 'package:wcb/Screens/signupmid.dart';
import 'Screens/landing.dart';
import 'Screens/loginmid.dart';
import 'Screens/adminlogin.dart';
import 'Screens/managerlogin.dart';

void main() {
  runApp(const WcB());
}

class WcB extends StatelessWidget {
  const WcB({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/':(context)=>Landing(),
                '/loginMid':(context)=>Landing(),
                '/Landings':(context)=>Landings(),
                 '/Landingl':(context)=>Landingl(),
                  '/AdminLogin':(context)=>AdminLogin(),
                  '/managerlogin':(context)=>Managerlogin(),
      },

    );
  }
}
