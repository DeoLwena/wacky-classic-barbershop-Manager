import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class Managerlogin extends StatelessWidget {
  const Managerlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7.0,
        backgroundColor: wigi.Red,
        title: const Text('Manager LogIn',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
