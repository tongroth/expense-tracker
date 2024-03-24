import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'UpdateData.dart'; // Ensure this file exists and contains relevant data

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Use Column to stack widgets vertically
          children: [
            Expanded(
              flex:
                  1, // Adjust flex to allocate space for the pie chart and text
              child: Row(
                // This Row contains the pie chart and the text
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: PieChart(
                        PieChartData(
                          borderData: FlBorderData(show: false),
                          sectionsSpace: 2,
                          centerSpaceRadius: 40,
                          sections: [
                            PieChartSectionData(
                              color: Colors.blue,
                              value: 40,
                              title: '🍔',
                              radius: 30,
                              titleStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffffffff),
                              ),
                            ),
                            // ... other sections ...
                            PieChartSectionData(
                              color: Colors.red,
                              value: 30,
                              title: '🚗',
                              radius: 30,
                              titleStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffffffff),
                              ),
                            ),
                            PieChartSectionData(
                              color: Colors.green,
                              value: 15,
                              title: '💊',
                              radius: 30,
                              titleStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffffffff),
                              ),
                            ),
                            PieChartSectionData(
                              color: Colors.orange,
                              value: 15,
                              title: '🎬',
                              radius: 30,
                              titleStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Hello',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex:
                  1, // Adjust flex to allocate space for the SavingsGoalsWidget
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child:
                    Center(child: SavingsGoalsWidget()), // Your custom widget
              ),
            ),
          ],
        ),
      ),
    );
  }
}
