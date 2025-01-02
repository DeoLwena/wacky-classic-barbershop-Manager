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
        actions: [
          Padding(
            padding: EdgeInsets.all(1.0),
            child: CircleAvatar(foregroundImage: AssetImage('images/g.jpeg')),
          )
        ]);
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
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

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
            SizedBox(
              width: screenwidth * 0.5,
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
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
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
  final VoidCallback function;

  MyCard({required this.imagename, required this.Huduma, required this.function});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return InkWell(
        onTap: function,
        child: Card(

          shadowColor: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenheight * 0.02,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: AssetImage('images/$imagename'),
                    height: screenheight * 0.3,
                    width: screenwidth * 0.5,
                  ),
                ),
                Container(
                  height: screenheight * 0.04,
                ),
                Text(
                  Huduma,
                  style: TextStyle(
                      color: Blue,
                      fontWeight: FontWeight.bold,
                      fontSize: screenwidth * 0.04),
                ),
                Container(
                  height: screenheight * 0.01,
                ),
              ],
            ),
          ),
        ));
  }
}

class Searchbar extends StatelessWidget {
  final String hint;

  Searchbar({required this.hint});
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(height: screenheight * 0.025),
        Container(
            height: screenheight * 0.04,
            width: screenwidth * 0.5,
            child: SearchBar(
              hintText: hint,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenheight * 1),
                    side: BorderSide(
                      color: Blue,
                      width: screenwidth * 0.001,
                    )),
              ),
            ))
      ],
    );
  }
}

class Badges extends StatelessWidget {
  final IconData iconi;
  final String head;
  final String explanation;

  Badges({
    required this.iconi,
    required this.head,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Row(
        children: [
          Container(width: screenwidth * 0.07),
          Icon(
            iconi,
            color: Blue,

          ),
          Container(width: screenwidth * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                head,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenheight * 0.02,
                    color: Blue),
              ),
              Text(
                explanation,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenheight * 0.02,
                    color: Colors.black54),
              ),
            ],
          )
        ],
      ),
    );
  }
}
