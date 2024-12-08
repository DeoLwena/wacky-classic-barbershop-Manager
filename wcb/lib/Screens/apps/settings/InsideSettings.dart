import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideSettings extends StatelessWidget {
  const InsideSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          height: screenheight * 0.03,
        ),
        Row(
          children: [
            Container(width: screenwidth * 0.03),
            CircleAvatar(
              backgroundImage: AssetImage('images/g.jpeg'),
              radius: screenwidth * 0.07,
            ),
            Container(width: screenwidth * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perida Chiwanyi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenheight * 0.025,
                      color: wigi.Blue),
                ),
                Text('Manager',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: screenheight * 0.027,
                        color: wigi.Blue))
              ],
            )
          ],
        ),
        Container(height: screenheight* 0.03,),
        Container(color: Colors.black38,height: screenheight *0.001,)
      ]),
    ));
  }
}
