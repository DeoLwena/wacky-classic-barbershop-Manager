import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const blue = Color.fromARGB(255, 15, 88, 148);
const red = Color.fromARGB(255, 232, 34, 39);

class CustomButton extends StatelessWidget {
  final Color rangi;
  final String neno;
  final VoidCallback bonyeza;

  const CustomButton({
    super.key,
    required this.rangi,
    required this.neno,
    required this.bonyeza,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 7.0,
      shadowColor: Colors.grey,
      color: rangi,
      child: InkWell(
        onTap: bonyeza,
        child: Container(
          width: width * 0.8,
          margin: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          padding: const EdgeInsets.fromLTRB(1, 2, 1, 2),
          color: rangi,
          child: Text(
            neno,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle( color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String kichwa;
  final Color rangi;

  const MyAppBar({super.key, required this.kichwa, required this.rangi});

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
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
        overflow: TextOverflow.ellipsis,
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
        image: AssetImage('images/alpha.png'),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu_rounded),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
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
    final screenwidth = MediaQuery.of(context).size.width;

    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.label,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: widget.textcolor,
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(widget.iconi, color: blue),
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
  final String huduma;
  final VoidCallback function;

  const MyCard(
      {required this.imagename, required this.huduma, required this.function});

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
                  huduma,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: blue,
                      fontWeight: FontWeight.bold),
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
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenheight * 1),
                    side: BorderSide(
                      color: blue,
                      width: screenwidth * 0.001,
                    )),
              ),
            ))
      ],
    );
  }
}

class Badges extends StatefulWidget {
  final IconData iconi;
  final String head;
  final String explanation;
  final Function function;

  Badges({
    required this.iconi,
    required this.head,
    required this.explanation,
    required this.function,
  });

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: InkWell(
        onTap: widget.function(),
        child: Row(
          children: [
            Container(width: screenwidth * 0.07),
            Icon(
              widget.iconi,
              color: blue,
            ),
            Container(width: screenwidth * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.head,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blue),
                ),
                Text(
                  widget.explanation,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class mydropdown extends StatefulWidget {
  final List<String> listname;
  final String dropname;

  mydropdown({required this.listname, required this.dropname});

  @override
  State<mydropdown> createState() => _mydropdownState();
}

class _mydropdownState extends State<mydropdown> {
  String? _selectedItem; //declared the -selected item

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: widget.listname.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedItem = value;
        });
      },
      validator: (value) {
        if (value == null) {
          return 'weka chaguo';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: widget.dropname,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class NumberInput extends StatelessWidget {
  final String lebo;

  NumberInput({required this.lebo});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration:
          InputDecoration(label: Text(lebo), border: OutlineInputBorder()),
    );
  }
}

class TextInput extends StatelessWidget {
  final String lebo;
  TextInput({required this.lebo});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration:
          InputDecoration(label: Text(lebo), border: OutlineInputBorder()),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final String headerText;
  final List<DrawerItem> items;

  const MyDrawer({
    super.key,
    required this.headerText,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: blue),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                headerText,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: Icon(item.icon, color: Colors.black),
                  title: Text(
                    item.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  onTap: () => item.onTap(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem {
  final String title;
  final IconData icon;
  final void Function(BuildContext) onTap;

  DrawerItem({required this.title, required this.icon, required this.onTap});
}

class PopUp {
  void _submitForm(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('saved', textAlign: TextAlign.center),
        backgroundColor: red,
        duration: Duration(seconds: 3),
      ),
    );
  }
}

class MyBottomNavbar extends StatefulWidget {
  final List<NavbarItem> pages;
  final List<Widget> destinations;

  const MyBottomNavbar(
      {required this.pages, required this.destinations, Key? key})
      : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ensure that at least 2 items are provided
    assert(widget.pages.length >= 2,
        "BottomNavigationBar requires at least 2 items");

    return Scaffold(
      body: widget.destinations[_selectedIndex], // Switch between pages
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: widget.pages.map((page) {
          return BottomNavigationBarItem(
            icon: Icon(page.Ikon),
            label: page.label,
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: blue,
        unselectedItemColor: red,
        onTap: _onItemTapped,
      ),
    );
  }
}

class NavbarItem {
  final String label;
  final IconData Ikon;
  NavbarItem({required this.Ikon, required this.label});
}

class BedgeDashboard extends StatelessWidget {
  final IconData ikon;
  final String lebo;
  final String number;
  final Color rangi;

  BedgeDashboard(
      {required this.ikon,
      required this.number,
      required this.lebo,
      required this.rangi});

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    final Screenheight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(Screenwidth * 0.01, Screenheight * 0.03,
          Screenwidth * 0.01, Screenwidth * 0.03),
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(Screenwidth * 0.025, Screenwidth * 0.02,
          Screenwidth * 0.02, Screenwidth * 0.02),
      height: Screenheight * 0.15,
      width: Screenwidth * 0.45,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              ikon,
              size: 35,
              color: Colors.white,
            ),
            SizedBox(height: Screenheight * 0.01),
            Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                number),
            SizedBox(height: Screenheight * 0.01),
            Text(style: TextStyle(fontSize: 20, color: Colors.white), lebo)
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: rangi,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 7, spreadRadius: 2.0)
          ]),
    );
  }
}

class IconCard extends StatefulWidget {
  final IconData ikon;
  final String huduma;
  final VoidCallback function;

  const IconCard(
      {required this.ikon, required this.huduma, required this.function});

  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return InkWell(
        onTap: widget.function,
        child: Card(
          shadowColor: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(screenwidth * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    screenwidth * 0.23,
                  ),
                  height: screenheight * 0.02,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Icon(widget.ikon,
                        size: screenwidth * 0.3, color: blue)),
                Container(
                  height: screenheight * 0.04,
                ),
                Text(
                  widget.huduma,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: blue,
                      fontWeight: FontWeight.bold),
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

// class Fetch extends StatelessWidget {
//   final Future<String> fetchData;
//
//   const Fetch({required this.fetchData});
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<String>(
//       future: fetchData,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         } else {
//           return Center(child: Text('Data: ${snapshot.data}'));
//         }
//       },
//     );
//   }
// }
//
// // Custom Pop-Up Widget
// void showCustomPopup(BuildContext context, String title, String content) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text(title),
//         content: Text(content),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: Text('Close'),
//           ),
//         ],
//       );
//     },
//   );
// }
class stripTile extends StatelessWidget {
  final IconData ikon;
  final String texti;
  final VoidCallback bonyeza;

  stripTile({required this.ikon, required this.texti,required this.bonyeza});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: height * 0.05,
        width: width * 0.95,
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: blue, width: width * 0.005)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            Icon(
              this.ikon,
              size: width * 0.05,
              color: blue,
            ),
            SizedBox(
              width: width * 0.2,
            ),
            Text(
              this.texti,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: blue),
            )
          ],
        ),
      ),
    onTap: bonyeza,);
  }
}
