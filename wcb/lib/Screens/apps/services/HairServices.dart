import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;



class Hairservices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MyForm();
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override

  // defining global kwy for the form

  final _formkey = GlobalKey<FormState>();
  String? _selectedItem; //store the selected item
  String? _numberInput; //for number input

  //List of items for dropdown
  final List<String> _levelone = [
    'Dread',
    'dawa',
  ];
  final List<String> _leveltwo = ['kuosha', 'kusokota', 'liwa', 'pico'];

  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: wigi.InsideAppBar(rangi: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wigi.mydropdown(listname: _levelone),
                  SizedBox(height: screenheight*0.05,),
                  wigi.mydropdown(listname: _leveltwo),
                  SizedBox(height: screenheight*0.05,),
                  wigi.CustomButton(rangi: wigi.Blue, neno: 'Hifadhi', bonyeza: (){})
                ],
              )),
        ));
  }
}
