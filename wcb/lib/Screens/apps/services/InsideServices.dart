import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenheight =MediaQuery.of(context).size.height;
    final screenwidth =MediaQuery.of(context).size.width;

    return MaterialApp(
      home: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Container(height: screenheight * 0.025),

            Container(height: screenheight * 0.02),
            Row(
              children: [Flexible(child:
                wigi.MyCard(imagename: 'Ras.png', Huduma: 'Hair services',function: (){}),),

                Flexible(child: wigi.MyCard(imagename: 'massage.png', Huduma: 'Skin',function: (){}))
              ],
            ),

            Row(
              children: [Flexible(child:
                wigi.MyCard(imagename: 'kucha.png', Huduma: 'Nails',function: (){}),),

                Flexible(child:wigi.MyCard(
                    imagename: 'haircut colored.png', Huduma: 'Hair Cuts',function: (){})
                ),],
            )
          ],
        ),
      ),
    );
  }
}
