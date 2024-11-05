import 'package:flutter/material.dart';
import 'package:wcb/Screens/Login//adminlogin.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Landings extends StatelessWidget {
  const Landings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: wigi.Blue,
      elevation: 7.0,
      shadowColor: Colors.grey,
      title: const Text(
        'Sign Up',
        style: TextStyle(color: Colors.white),
      ),
    ),);

  }
}
