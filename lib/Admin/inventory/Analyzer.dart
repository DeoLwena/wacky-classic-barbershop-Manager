import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:wcb/Admin/inventory/analyzer chart.dart' as chat;

class Analyzer extends StatelessWidget {
  final List<Map<String, dynamic>> stock = [
    {'Name': 'oraimo charger', 'Quantity': -2},
    {'Name': 'nokia charger', 'Quantity': -4},
    {'Name': 'oraimo phone', 'Quantity': -1},
    {'Name': 'nokia phone', 'Quantity': -17},
    {'Name': 'pochi', 'Quantity': -15},
    {'Name': 'mateki', 'Quantity': -15},
    {'Name': 'ALfa', 'Quantity': -12},
    {'Name': 'Blotar', 'Quantity': 109},
    {'Name': 'conte', 'Quantity': -12},
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
              title: 'Log Out', icon: Icons.logout, onTap: (context) {})
        ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [SizedBox(height: height * 0.07),Text('BIDHAA ZILIZOPO',style: TextStyle(fontWeight: FontWeight.bold,fontSize: height * 0.023),),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: height * 0.75,
                  padding: EdgeInsets.all(16),
                  width:
                  stock.length * 80, // Adjust width to prevent overcrowding
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      barGroups: stock.asMap().entries.map((entry) {
                        int index = entry.key;
                        var item = entry.value;
                        int quantity = item['Quantity'] ?? 0;

                        return BarChartGroupData(
                          x: index,
                          barsSpace:
                          width * 0.05, // Ensure space between groups
                          barRods: [
                            BarChartRodData(
                              toY: quantity.toDouble(),
                              color: getBarColor(quantity),
                              width: width * 0.05, // Reduce width for spacing
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ],
                        );
                      }).toList(),
                      groupsSpace: width * 0.05, // Add space between bar groups
                      titlesData: FlTitlesData(
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                            reservedSize: width * 0.09,
                            interval:
                            10, // Set an interval to reduce label overlap
                            getTitlesWidget: (value, meta) => Text(
                                value.toInt().toString(),
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 50, // Increase for better visibility
                            getTitlesWidget: (value, meta) {
                              int index = value.toInt();
                              if (index >= 0 && index < stock.length) {
                                return Transform.rotate(
                                  angle: 290,
                                  child: Text(
                                    stock[index]['Name'],
                                    style: TextStyle(
                                        fontSize:
                                        width * 0.03), // Reduce font size
                                    overflow: TextOverflow
                                        .ellipsis, // Prevent long text overflow
                                  ),
                                );
                              } else {
                                return SizedBox.shrink();
                              }
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(show: false),
                    ),
                  ),
                ),
              ),
            ),
            wigi.CustomButton(
                rangi: wigi.blue,
                neno: 'onesha jedwali',
                bonyeza: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chat.analysisChart()));
                })
          ]),
        ));
  }

  Color getBarColor(int quantity) {
    if (quantity <= 5) {
      return Colors.red;
    } else if (quantity <= 15) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }
}
