import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      //*styling
      elevation: 6,
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      shadowColor: Colors.black,
      //*expenses are inside of this card
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, //*title starts at the beginning of the card
            children: [
              Text(expense.title,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 4),
              Row(
                //*good for displaying multiple widgets next to each other horizontally
                children: [
                  Text(
                      '\$${expense.amount.toStringAsFixed(2)}'), //*diplaying the $ through the escape "\"
                  Spacer(), //*can be used between any column or row to tell
                  //*flutter that it should create a widget that takes up all the space it can get, between the widget displayed
                  Row(
                    children: [
                      Icon(categoryIcons[
                          expense.category]), //*pulling icon from expense.dart
                      const SizedBox(width: 8),
                      Text(expense.formattedDate),
                    ],
                  ),
                ],
              ),
            ]), //*using column because it does not need to be scrollable
      ),
    ); //*widget using for styling that gives a card look
  }
}
