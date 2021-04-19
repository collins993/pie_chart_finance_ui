import 'package:finance_ui_design/pages/home_page.dart';
import 'package:finance_ui_design/providers/transactions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'constants/constants.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static const MaterialColor _2A363B = MaterialColor(0XFF2A3638, colorMap);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Transactions(),
      child: MaterialApp(
        title: 'Personal Finance',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: _2A363B,
          fontFamily: GoogleFonts.quicksand().fontFamily,
          textTheme: GoogleFonts.quicksandTextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: HomePage(),
      ),
    );
  }
}

