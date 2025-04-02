import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'ExpensesReport.dart';
import 'DebtsCredits.dart';
import 'NeedsReports.dart';
import 'ProfitReports.dart';
class InsideReports extends StatelessWidget {
  const InsideReports({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;



    return MaterialApp(
        home: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        wigi.Searchbar(
          hint: 'Search Report',
        ),
        Container(height: screenheight * 0.05),
        Column(
          children: [
            Row(children: [Container(width: screenwidth * 0.2)]),
            Row(
              children: [
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'expenses.png',
                        huduma: 'Expenses',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExpensesReport()));
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'rep.png',
                        huduma: 'Demaged or Lost',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfitReport()));
                        }))
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'stock.png',
                        huduma: 'Needs',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NeedsReport()));
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'dets.png',
                        huduma: 'Debits/Credits',
                        function: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DebitsCredits()));}))
              ],
            ),
          ],
        ),
      ]),
    ));
  }
}
