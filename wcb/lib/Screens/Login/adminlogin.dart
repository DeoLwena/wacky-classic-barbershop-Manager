import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(elevation: 7.0, title: const Text("Login Admin",style: TextStyle(color: Colors.white),),backgroundColor: wigi.Blue,),
      body: const Center(child: Text('Welcom Admini'),),

    );
  }
}
