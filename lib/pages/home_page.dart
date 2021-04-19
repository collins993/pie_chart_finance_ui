import 'package:finance_ui_design/custom/header.dart';
import 'package:finance_ui_design/custom/transaction_card.dart';
import 'package:finance_ui_design/custom/new_transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 0.50;
  double _opacity = 0.9;

  void _addTransaction(){

    setState(() {
      _height = 0.08;
      _opacity = 1;
    });
  }

  void _done(){
    setState(() {
      _height = 0.55;
      _opacity = 0.9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.short_text),
        ),
        centerTitle: true,
        title: Text(
          "Personal Finance",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.person_outlined),
          ),
        ],
      ),

      body: Stack(
        children: [
          Column(
            children: [
              Header(_addTransaction),
              NewTransaction(_opacity, _done),
            ],
          ),

          TransactionCard(_height),
        ],
      ),
    );
  }
}
