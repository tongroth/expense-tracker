import 'package:flutter/material.dart';
import 'screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.teal, // Use 'secondary' for accentColor
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyText1: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
          bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ExpenseTracker(), // Ensure ExpenseTracker is correctly implemented
    );
  }
}
