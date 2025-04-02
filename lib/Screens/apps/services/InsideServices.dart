import 'package:flutter/material.dart';
import 'package:wcb/Screens/apps/services/Haircuts.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'HairServices.dart';
import 'SkinServices.dart';
import 'NailsService.dart';

class InsideServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: screenheight * 0.025),
            Container(height: screenheight * 0.02),
            Row(
              children: [
                Flexible(
                  child: wigi.MyCard(
                      imagename: 'nywele.png',
                      huduma: 'Hair services',
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hairservices()));
                      }),
                ),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'skin.png',
                        huduma: 'Skin',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Skinservices()));

                        }))
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: wigi.MyCard(
                      imagename: 'kucha.png', huduma: 'Nails', function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Nailservices()));

                  }),
                ),
                Flexible(
                    child: wigi.MyCard(
                        imagename: 'kunyoa.png',
                        huduma: 'Hair Cuts',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Haircuts()));

                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}
