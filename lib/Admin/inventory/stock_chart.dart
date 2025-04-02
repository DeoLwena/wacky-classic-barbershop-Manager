import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chart extends StatelessWidget {
  final List<Map<String, dynamic>> stock = [
    {'S/N': 1, 'Bidhaa': 'oraimo charger', 'Quantity': 2},
    {'S/N': 2, 'Bidhaa': 'nokia charger', 'Quantity': 4},
    {'S/N': 3, 'Bidhaa': 'oraimo phone', 'Quantity': 1},
    {'S/N': 4, 'Bidhaa': 'nokia phone', 'Quantity': 17},
    {'S/N': 5, 'Bidhaa': 'pochi', 'Quantity': 15},
    {'S/N': 6, 'Bidhaa': 'mateki', 'Quantity': 15},
    {'S/N': 7, 'Bidhaa': 'ALfa', 'Quantity': 12},
    {'S/N': 8, 'Bidhaa': 'Blotar', 'Quantity': 111},
    {'S/N': 9, 'Bidhaa': 'conte', 'Quantity': '12'},
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: wigi.InsideAppBar(rangi: Colors.white),
        drawer: wigi.MyDrawer(headerText: 'Hello, Admin', items: [
          wigi.DrawerItem(title: 'Home', icon: Icons.home, onTap: (context) {}),
          wigi.DrawerItem(
              title: 'Profile',
              icon: FontAwesomeIcons.person,
              onTap: (context) {}),
          wigi.DrawerItem(
              title: 'Settings', icon: Icons.settings, onTap: (context) {}),
          wigi.DrawerItem(
              title: 'Log Out', icon: Icons.logout, onTap: (context) {}),
        ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: height * 0.03,
            ),
            Container(
                alignment: Alignment.center,
                width: width * 0.95,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(dataRowColor: MaterialStateProperty.all(Colors.grey.shade100),
                      headingTextStyle: TextStyle(fontSize: height * 0.02,fontWeight: FontWeight.bold),
                      dataTextStyle: TextStyle(fontSize: height * 0.02),
                      dividerThickness: 0.8,
                      horizontalMargin: width * 0.15,
                      headingRowColor:
                          MaterialStateProperty.all(Colors.blue.shade200),
                      columns: [
                        DataColumn(label: Text('S/N')),
                        DataColumn(label: Text('BIDHAA')),
                        DataColumn(label: Text('IDADI')),
                      ],
                      rows: stock.map((item) {
                        return DataRow(cells: [
                          DataCell(Text(item['S/N'].toString())),
                          DataCell(Text(item['Bidhaa'])),
                          DataCell(Text(item['Quantity'].toString())),
                        ]);
                      }).toList(),
                    ))),
          ]),
        ));
  }
}
