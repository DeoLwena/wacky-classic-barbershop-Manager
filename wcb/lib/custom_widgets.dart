import 'package:flutter/material.dart';

const Blue = Color.fromARGB(255, 15, 88, 148);
const Red = Color.fromARGB(255, 232, 34, 39);

class CustomButton extends StatelessWidget {
  final Color rangi;
  final String neno;
  final VoidCallback bonyeza;

  const CustomButton(
      {super.key,
      required this.rangi,
      required this.neno,
      required this.bonyeza});

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
          margin: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          padding: const EdgeInsets.fromLTRB(1, 2, 1, 2),
          color: rangi,
          child: Text(
            neno,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String kichwa;
  final Color rangi;

  const MyAppBar({required this.kichwa, required this.rangi});

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

//INSIDE APP BAR

class InsideAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Color rangi;

  const InsideAppBar({required this.rangi});

  @override
  _InsideAppBarState createState() => _InsideAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _InsideAppBarState extends State<InsideAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: widget.rangi,
      elevation: 7.0,
      shadowColor: Colors.grey,
      title: const Image(
        height: 50.0,
        alignment: Alignment.center,
        image: const AssetImage('images/alpha.png'),
      ),
    );
  }
}

class MyTextInput extends StatefulWidget {
  final String label;
  final IconData iconi;
  final String hintText;
  final Color textcolor;

  MyTextInput(
      {required this.label,
      required this.iconi,
      required this.hintText,
      required this.textcolor});

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.label,
                style: TextStyle(
                    color: widget.textcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 8.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(widget.iconi, color: Blue),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: widget.hintText),
                  ))
                ],
              ),
            )
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  final String imagename;
  final String Huduma;

  MyCard({required this.imagename, required this.Huduma});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {},
       child: Card(
          shadowColor: Colors.grey,
          child:Padding(padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage('images/$imagename'),
                  width: 150,
                  height: 150,
                ),
              ),
              Text(Huduma)
            ],
          ),
        ),)
      );
  }
}
