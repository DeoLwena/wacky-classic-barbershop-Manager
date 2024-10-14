import 'package:flutter/material.dart';

const Blue = Color.fromARGB(255, 15, 88, 148);
const Red = Color.fromARGB(255, 232, 34, 39);

class CustomButton extends StatelessWidget {
  final Color rangi;
  final String neno;
  final VoidCallback bonyeza;

  const CustomButton(
      {required this.rangi, required this.neno, required this.bonyeza});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
      shadowColor: Colors.grey,
      color: rangi,
      child: InkWell(
        onTap: bonyeza,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          padding: EdgeInsets.fromLTRB(1, 2, 1, 2),
          color: rangi,
          child: Text(
            neno,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  final String kichwa;
  final Color rangi;

  MyAppBar({required this.kichwa, required this.rangi});
  @override
  Widget build(BuildContext context) {
    return  AppBar(
        backgroundColor:rangi,
        elevation: 7.0,
        shadowColor: Colors.grey,
        title: Text(
          kichwa,
          style: TextStyle(color: Colors.white),
        ),
       );
  }
//class MyText extends StatelessWidget{
  //  final String textput;
   // final Icon icon;

    //Widget build(BuildContext context){
    //  return const Card();
  //}
 // }



}
