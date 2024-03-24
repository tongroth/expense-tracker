import 'package:flutter/material.dart';
import 'package:expensetracker/Home_page.dart';
import 'package:expensetracker/Report_page.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  int _selectedIndex = 0; // Current index of the selected tab

  // List of widgets to display for each tab
  static final List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    ReportPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Dynamically display the selected widget from the options
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Report',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Colors.amber[800], // Example of setting the active item color
        onTap: _onItemTapped,
      ),
    );
  }
}
