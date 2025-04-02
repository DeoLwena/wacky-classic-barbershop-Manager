import 'package:flutter/material.dart';
import 'package:wcb/Landings/SignUp//signupmid.dart';
import '../Landings/landing.dart';
import '../Landings/Login/loginmid.dart';
import '../Landings/Login/adminlogin.dart';
import '../Landings/Login/managerlogin.dart';
import '../Landings/Login/recoverycodeAdmin.dart';
import '../Landings/Login/forgotpasswordAdmin.dart';
import '../Landings/Login/forgotpasswordManager.dart';
import '../Landings/Login/recoverycodeManager.dart';
import '../Landings/Login/changepasswordManager.dart';
import '../Screens/apps/home.dart';
import '../screens/apps/services/HairServices.dart';
import 'package:wcb/Admin/home/home.dart';

void main() {
  runApp(const WcB());
}

class WcB extends StatelessWidget {
  const WcB({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              bodyLarge: TextStyle(fontSize: 20.0),
              bodyMedium: TextStyle(fontSize: 18.0),
              bodySmall: TextStyle(fontSize: 16.0))),
      debugShowCheckedModeBanner:
          false, // Add this line to remove the debug banner
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
        '/forgotpasswordManager': (context) => Recoverym(),
        '/recoverycodeManager': (context) => Confirmationm(),
        '/changepasswordmanager': (context) => Newpasswordm(),
        '/HairServices': (context) => Hairservices(),
        '/home': (context) => Home(),
        '/Home': (context) => AdminHome(),
      },
    );
  }
}
