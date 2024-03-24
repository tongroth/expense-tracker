import 'package:flutter/material.dart';
import 'package:expensetracker/AddInputScreen.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Container(
                child: AddInputScreen(),
              ),
            );
          },
        );
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}
