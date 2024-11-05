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

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String kichwa;
  final Color rangi;

  MyAppBar({required this.kichwa, required this.rangi});

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.rangi,
      elevation: 7.0,
      shadowColor: Colors.grey,
      title: Text(
        widget.kichwa,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

//class MyText extends StatelessWidget{
  //  final String textput;
   // final Icon icon;

    //Widget build(BuildContext context){
    //  return const Card();
  //}
 // }






class MyTextInput extends StatelessWidget{
  final String label;
  final String Password;
  final Icon iconi;

  MyTextInput({required this.label, required this.Password,required this.iconi });
  
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
        padding: EdgeInsets.fromLTRB(1, 2, 1, 2),
        child:Row(children: [Icon(iconi as IconData?),Text(label, textAlign: TextAlign.center,)],),);
  }}
