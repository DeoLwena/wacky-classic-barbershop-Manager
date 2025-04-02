import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'NewStock.dart';
import 'StockChecking.dart';

class InsideStock extends StatelessWidget {
  const InsideStock({super.key});

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
                        imagename: 'add stock.png',
                        huduma: 'Add Stock',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddStock()));
                        })),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'stok.png',
                        huduma: 'Check Stock',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StockCheck()));
                        }))
              ],
            )
          ],
        ),
      ]),
    ));
  }
}
