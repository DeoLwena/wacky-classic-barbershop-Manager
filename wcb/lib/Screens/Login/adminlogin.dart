import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.MyAppBar(
        kichwa: 'Login Admin',
        rangi: Colors.blue, // Use Colors.blue or your custom color
      ),
      body: Center(
        child: Text('Admin Login Page'),
      ),
    );
  }
}
