import 'package:finance_ui_design/models/expense.dart';
import 'package:finance_ui_design/providers/transactions.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/rendering.dart';
import 'expense_chart.dart';

class Header extends StatelessWidget {

  final Function addTransaction;

  static List<charts.Series<Expense, String>> _series = [
    charts.Series<Expense, String>(
      id: "Expenses",
      domainFn: (Expense expense, _) => expense.category,
      measureFn: (Expense expense, _) => expense.value,
      labelAccessorFn: (Expense expense, _) => "\$${expense.value}",
      colorFn: (Expense expense, _) =>
          charts.ColorUtil.fromDartColor(expense.color),
      data: [
        Expense("Business", 149.99, Color(0Xff40bad5)),
        Expense("Meals", 143.67, Color(0Xffe8505b)),
        Expense("Gifts", 49.99, Color(0Xfffe91ca)),
        Expense("Gaming", 27.35, Color(0Xfff6d743)),
        Expense("Entertainment", 34.99, Color(0Xfff57b51)),
      ],
    ),
  ];

  const Header(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);

    return Container(
      width: double.infinity,
      height: mediaQuery.size.height * 0.43,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: ExpenseChart(
                seriesList: _series,
                animate: true,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlineButton(
                  onPressed: addTransaction,
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    width: 124,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.playlist_add,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Add Transaction",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    width: 77,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Reports",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: const Text(
                "Transactions",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//6:22
