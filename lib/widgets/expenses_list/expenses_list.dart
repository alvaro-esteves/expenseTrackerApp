import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    //todo a list will be created here but the length is unknown so dont use Column
    return ListView.builder(
      //*The diff between column and Listview is that listview makes it scrollable
      itemCount: expenses.length, //*dismissible makes widgets swippable
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(
          expenses[index],
        ), //*makes widgets uniquely identifiable
        background: Container(
          color: Theme.of(context)
              .colorScheme
              .error
              .withOpacity(0.75), //*adding backgound color to Dismissible
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    ); //todo for every function called, index will be of a diff. number
  }
}
