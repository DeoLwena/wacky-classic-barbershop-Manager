import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wcb/Admin/inventory/add_stock.dart' as adding;
import 'package:wcb/Admin/inventory/Analyzer.dart' as analysis;
import 'package:wcb/Admin/inventory/setprice.dart' as price;
import 'package:wcb/Admin/inventory/available_stock.dart' as present;

class insideInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: wigi.InsideAppBar(rangi: Colors.white),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                wigi.IconCard(
                    ikon: FontAwesomeIcons.tag,
                    huduma: 'Set Price',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => price.setPrice()));
                    }),
                wigi.IconCard(
                    ikon: FontAwesomeIcons.boxesStacked,
                    huduma: 'Availble Stock',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => present.AvailableStock()));
                    })
              ],
            ),
            Row(
              children: [
                wigi.IconCard(
                    ikon: FontAwesomeIcons.truckRampBox,
                    huduma: 'Add Stock',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => adding.Add_Stock()));
                    }),
                wigi.IconCard(
                    ikon: FontAwesomeIcons.pieChart,
                    huduma: 'Analysis',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => analysis.Analyzer()));
                    }),],
            )
          ]),
        ));
  }
}
