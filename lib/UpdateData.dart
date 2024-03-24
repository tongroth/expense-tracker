import 'data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryData {
  List<Category> cardInformation = [
    Category(title: 'Food', icon: Icons.fastfood, amount: '-\$5'),
    Category(title: 'Drink', icon: Icons.local_drink, amount: '-\$10'),
    Category(title: 'Education', icon: Icons.school, amount: '-\$100'),
    Category(title: 'Entertainment', icon: Icons.movie, amount: '-\$3'),
  ];
}

class SavingGoal {
  final String name;
  final double currentAmount;
  final double goalAmount;
  final IconData icon;

  SavingGoal({
    required this.name,
    required this.currentAmount,
    required this.goalAmount,
    required this.icon,
  });
}

class SavingsGoalsWidget extends StatelessWidget {
  final List<SavingGoal> goals = [
    SavingGoal(
        name: 'Vacation',
        currentAmount: 500,
        goalAmount: 1000,
        icon: Icons.flight_takeoff),
    SavingGoal(
        name: 'Car',
        currentAmount: 8000,
        goalAmount: 15000,
        icon: Icons.directions_car),
    SavingGoal(
        name: 'Guitar',
        currentAmount: 200,
        goalAmount: 600,
        icon: Icons.music_note),
    SavingGoal(
        name: 'Dating',
        currentAmount: 800,
        goalAmount: 1500,
        icon: Icons.favorite),
    // Add more goals as needed
  ];

  SavingsGoalsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: goals.length,
      itemBuilder: (context, index) {
        final goal = goals[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(goal.icon, color: Colors.white),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(goal.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: goal.currentAmount / goal.goalAmount,
                      backgroundColor: Colors.grey[300],
                      progressColor: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                        '\$${goal.currentAmount.toStringAsFixed(2)}/\$${goal.goalAmount.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
