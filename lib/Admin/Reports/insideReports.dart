import 'package:flutter/material.dart';
import 'package:wcb/Landings/custom_widgets.dart' as wigi;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wcb/Admin/Reports/Sales/SalesRepo.dart' as sale;
import 'package:wcb/Admin/Reports/financial/FinancialRepo.dart' as finance;
import 'package:wcb/Admin/Reports/Others/OthersRepo.dart' as others;
import 'package:wcb/Admin/Reports/Employees/EmployeesRepo.dart' as employee;
import 'package:wcb/Admin/Reports/expenses/ExpensesRepo.dart' as expense;

class insideReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wigi.InsideAppBar(rangi: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              wigi.IconCard(
                  ikon: FontAwesomeIcons.bagShopping,
                  huduma: 'Sales',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sale.salesRepo()));
                  }),
              wigi.IconCard(
                  ikon: FontAwesomeIcons.chartLine,
                  huduma: 'Financial',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => finance.financeRepo()));
                  })
            ]),
            Row(children: [
              wigi.IconCard(
                  ikon: FontAwesomeIcons.fileInvoiceDollar,
                  huduma: 'Expenses',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => expense.expenceRepo()));
                  }),
              wigi.IconCard(
                  ikon: FontAwesomeIcons.user,
                  huduma: 'Employees',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => employee.employeeRepo()));
                  })
            ]),
            Row(children: [
              wigi.IconCard(
                  ikon: FontAwesomeIcons.clipboardCheck,
                  huduma: 'Others',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => others.OthersRepo()));
                  }),
            ])
          ],
        ),
      ),
    );
  }
}
