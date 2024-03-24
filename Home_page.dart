import 'package:flutter/material.dart';
import 'Top_card.dart';
import 'UpdateData.dart';
import 'AddButton.dart';
import 'transaction.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          TopCard(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0), // Add padding around the list
              child: ListView.builder(
                // Corrected to ListView.builder
                itemCount: CategoryData().cardInformation.length,
                itemBuilder: (context, index) {
                  final category = CategoryData().cardInformation[index];
                  return CategoryCard(
                    title: category.title,
                    icon: category.icon,
                    amount: category.amount,
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: AddButton(),
    );
  }
}
