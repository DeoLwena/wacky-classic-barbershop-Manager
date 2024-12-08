import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcb/custom_widgets.dart' as wigi;

class InsideReports extends StatelessWidget {
  const InsideReports({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[ wigi.Searchbar(hint: 'Search Report',),Container(height: screenheight*0.05),
                Column(
                  children: [
                    Row(children: [
                      Container(width: screenwidth * 0.2)])
                    ,
                    Row(
                      children: [
                        Flexible(child: wigi.MyCard(imagename: 'profile.jpg' , Huduma: 'Expenses')),
                        Flexible(child: wigi.MyCard(imagename: 'services.jpg', Huduma: 'Loss'))
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(child: wigi.MyCard(imagename: 'profile.jpg' , Huduma: 'Needs')),
                        Flexible(child: wigi.MyCard(imagename: 'services.jpg', Huduma: 'Others'))
                      ],
                    ),
                  ],
                ),]
          ),
        )

    );
  }
}
