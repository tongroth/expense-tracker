import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'UpdateData.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
        boxShadow: Shadow.shadow,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2, // Adjust flex factor if needed for sizing
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: Text(
                      "70%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    footer: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: Shadow
                              .shadow, // Assuming Shadow.shadow is a list of BoxShadow
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Remaining Budget",
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey[300]!,
                    progressColor: Colors.green,
                  ),
                ),
              ),
              Expanded(
                flex: 2, // Adjust flex factor if needed for sizing
                child: CarouselSlider(
                  items: [
                    // Assuming these are placeholders for now
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200],
                      ),
                      child: Center(
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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: SavingsGoalsWidget(),
                      ),
                    ),
                    // Add more items as needed
                  ],
                  options: CarouselOptions(
                    height: 180,
                    enlargeCenterPage: true,
                    autoPlay: false, // Set to true if you want auto sliding
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                  ),
                ),
              ),
            ],
          ),
          //SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Income Text with Icon
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: Shadow.shadow,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 20, // Adjust the size of the CircleAvatar
                        child: Icon(Icons.arrow_upward,
                            color: Colors.green,
                            size: 30), // Adjust icon size as needed
                      ),
                    ),
                    // Icon for income
                    SizedBox(width: 8), // Spacing between icon and text
                    Text(
                      'Income: \$0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.green, // Green color to represent income
                      ),
                    ),
                  ],
                ),
                // Expenses Text with Icon
                Row(
                  children: [
                    Text(
                      'Expenses: -\$15',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.red, // Red color to signify expenses
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: Shadow.shadow,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 20, // Adjust the size of the CircleAvatar
                        child: Icon(Icons.arrow_downward,
                            color: Colors.red, size: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
