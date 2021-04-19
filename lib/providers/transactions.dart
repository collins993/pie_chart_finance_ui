import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  const Transaction(
      {@required this.id,
      @required this.title,
      @required this.value,
      @required this.category,
      @required this.iconData,
      @required this.color});
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(
      id: 1,
      title: "Dinner",
      value: 128.67,
      category: "Meals",
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 2,
      title: "Birthday Present",
      value: 49.99,
      category: "Gifts",
      iconData: Icons.fastfood,
      color: Color(0xfffe91ca),
    ),
    Transaction(
      id: 3,
      title: "Pc game",
      value: 27.35,
      category: "Gaming",
      iconData: Icons.gamepad,
      color: Color(0xfff6d743),
    ),
    Transaction(
      id: 4,
      title: "Software",
      value: 149.99,
      category: "Business",
      iconData: Icons.work,
      color: Color(0xff40bad5),
    ),
    Transaction(
      id: 5,
      title: "Books",
      value: 34.99,
      category: "Entertainment",
      iconData: Icons.casino,
      color: Color(0xfff57b51),
    ),
    Transaction(
      id: 6,
      title: "Breakfast",
      value: 15.00,
      category: "Meals",
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
  ];

  List<Transaction> get transactions {
    return _transactions;
  }
}
