import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:fl_chart/fl_chart.dart';


class dashBoardadmin extends StatelessWidget {
  const dashBoardadmin({super.key});

  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
    final Screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const wigi.InsideAppBar(rangi: Colors.white),
      drawer: wigi.MyDrawer(headerText: 'Hello, Admin Welcome', items: [
        wigi.DrawerItem(
            title: 'profile', icon: Icons.person, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Settings', icon: Icons.settings, onTap: (context) {}),
        wigi.DrawerItem(
            title: 'Log out', icon: Icons.logout_rounded, onTap: (context) {})
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: Screenheight * 0.02),
                Row(children: [
                  wigi.BedgeDashboard(
                    ikon: Icons.list_alt,
                    lebo: 'Products',
                    number: '10',
                    rangi: Colors.teal.shade300,
                  ),
                  wigi.BedgeDashboard(
                      ikon: Icons.fact_check_outlined,
                      number: '89',
                      lebo: 'Sales',
                      rangi: Colors.purple.shade300)
                ]),
                Row(children: [
                  wigi.BedgeDashboard(
                    ikon: Icons.attach_money_sharp,
                    lebo: 'Revenue',
                    number: '100 k',
                    rangi: Colors.pink.shade300,
                  ),
                  wigi.BedgeDashboard(
                      ikon: Icons.assignment_return,
                      number: '2',
                      lebo: 'Returns',
                      rangi: Colors.blue.shade300)
                ])
              ,SizedBox(height: Screenheight* 0.05,)
            ]),
            Container(color: Colors.white,
              child: Column(mainAxisAlignment:MainAxisAlignment.start,children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                    'Weeekly Sales',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.white),
                  ),
                ),
                SizedBox(height: Screenheight * 0.05,),
                SizedBox(
                  width: Screenwidth * 1,
                  height: Screenheight * 0.2,
                  child: LineChart(
                    LineChartData(
                      backgroundColor: Colors.white,
                      titlesData: FlTitlesData(
                        show: true,
                        leftTitles: const AxisTitles(
                            axisNameSize: 12,
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: const AxisTitles(
                            axisNameSize: 12,
                            sideTitles: SideTitles(showTitles: false)),
                        topTitles: const AxisTitles(
                            sideTitles: SideTitles(
                          showTitles: false,
                        )),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles( interval:.9,
                              showTitles: true,
                              getTitlesWidget: (value, _) {
                                switch (value.toInt()) {
                                  case 1:
                                    return const Text('Sun');
                                  case 2:
                                    return const Text('Mon');
                                  case 3:
                                    return const Text('Tues');
                                  case 4:
                                    return const Text('Wednes');
                                  case 5:
                                    return const Text('Thurs');
                                  case 6:
                                    return const Text('Fri');
                                  case 7:
                                    return const Text('Satur');
                                  default:
                                    return const Text('');
                                }
                              }),
                        ),
                      ),
                      gridData:
                          const FlGridData(show: true, drawVerticalLine: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(1, 2),
                            const FlSpot(2, 10),
                            const FlSpot(3, 5),
                            const FlSpot(4, 6),
                            const FlSpot(5, 7),
                            const FlSpot(6, 9),
                            const FlSpot(7, 8),
                          ],
                          isCurved: true,
                          color: wigi.blue,
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                                colors: [Colors.lightBlue.shade400, Colors.white],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                        LineChartBarData(
                          spots: [
                            const FlSpot(1, 2),
                            const FlSpot(2, 8),
                            const FlSpot(3, 6),
                            const FlSpot(4, 5),
                            const FlSpot(5, 6),
                            const FlSpot(6, 11),
                            const FlSpot(7, 8),
                          ],
                          isCurved: true,
                          color: wigi.red,
                          belowBarData: BarAreaData(
                            show: false,
                            gradient: LinearGradient(
                                colors: [Colors.red.shade400, Colors.white],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: Screenheight*0.05,)]),
            ),
          ],
        ),
      ),
    );
  }
}
