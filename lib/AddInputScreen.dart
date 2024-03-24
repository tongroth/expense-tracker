import 'package:flutter/material.dart';
import 'data.dart';

class AddInputScreen extends StatelessWidget {
  const AddInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ExpansesCategory.categories;

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.attach_money),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          Container(
            height: 100, // Adjust based on your icon and text size
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categories.length, (index) {
                  return Container(
                    width:
                        80, // Increased width to accommodate larger buttons and text
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).primaryColor, // Button color
                            onPrimary: Colors.white, // Text and icon color
                            shape: CircleBorder(), // Circular shape
                            padding:
                                EdgeInsets.all(15), // Padding inside the button
                          ),
                          onPressed: () {
                            // Handle the button press here
                            // For example, you can set the selected category or perform any action
                          },
                          child: Icon(
                            categories[index]['icon'] as IconData,
                            size: 30, // Icon size inside the button
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          categories[index]['label'] as String,
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Note',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.note),
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 8.0, // Gap between chips
            children: <Widget>[
              Chip(label: Text('Breakfast')),
              Chip(label: Text('Lunch')),
              Chip(label: Text('Dinner')),
              // Add more Chips as needed...
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Define what happens when the button is pressed
              // You might want to collect the data from the fields and process it here
              print('Submit button pressed');
            },
            child: Text('Submit', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              primary:
                  Theme.of(context).primaryColor, // Use the primary theme color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 50, vertical: 10), // Adjust padding
            ),
          ),
        ],
      ),
    );
  }
}
