import 'package:flutter/material.dart';
import 'package:wcb/Screens/SignUp//signupmid.dart';
import 'Screens/landing.dart';
import 'Screens/Login/loginmid.dart';
import 'Screens/Login/adminlogin.dart';
import 'Screens/Login//managerlogin.dart';
import 'Screens/Login/recoverycodeAdmin.dart';
import 'Screens/Login//forgotpasswordAdmin.dart';
import 'Screens/Login/forgotpasswordManager.dart';
import 'Screens/Login/recoverycodeManager.dart';
import 'Screens/Login/changepasswordManager.dart';
import 'Screens/apps/home.dart';
import 'screens/apps/services/HairServices.dart';
void main() {
  runApp(const WcB());
}

class WcB extends StatelessWidget {
  const WcB({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line to remove the debug banner
      initialRoute: '/',
      routes: {
        '/': (context) => Landing(),
        '/loginMid': (context) => Landing(),
        '/Landings': (context) => Landings(),
        '/Landingl': (context) => Landingl(),
        '/AdminLogin': (context) => AdminLogin(),
        '/managerlogin': (context) => Managerlogin(),
        '/recoverycode': (context) => Confirmation(),
        '/adminforgotpassword': (context) => Recovery(),
        '/forgotpasswordManager':(context) => Recoverym(),
        '/recoverycodeManager':(context) => Confirmationm(),
        '/changepasswordmanager':(context) => Newpasswordm(),
        '/HairServices':(context)=> Hairservices(),
        '/home':(context) => Home(),

      },
    );
  }
}
