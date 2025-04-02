import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:wcb/Admin/Reports/insideReports.dart' as report;
import 'package:wcb/Admin/inventory/InsideInventory.dart' as inventory;
import 'package:wcb/Admin/home/Dashboardadmin.dart' as home;


class AdminHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.grey),

      bottomNavigationBar: wigi.MyBottomNavbar(
    pages: [
    wigi.NavbarItem(Ikon: Icons.home, label: 'Home'),
    wigi.NavbarItem(Ikon: Icons.auto_graph, label: 'Report') ,
      wigi.NavbarItem(Ikon: Icons.warehouse, label: 'Stock')// Ensure you have at least two items
    ],
    destinations: [
      home.dashBoardadmin(),
      report.insideReports(),
      inventory.insideInventory()
    ]
    ));

  }
}
