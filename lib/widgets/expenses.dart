import 'package:expense_tracker/widgets/new_expenses.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/chart/chart.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.99,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      //*making sure the keyboard does not overlap the inputs
      isScrollControlled: true,
      context: context,
      builder: (ctx) =>
          NewExpense(onAddExpense: _addExpense), //*add expense is updated here
    ); //*diff. context as the build method
    //*same context as the build method
  }

  //*new expenses from the app are added here
  void _addExpense(Expense expense) {
    setState(() {
      //*setState ensures the UI is updated
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses
        .indexOf(expense); //*2.Get the index of the expense removed
    setState(() {
      //*setState makes sure the expense is removed visually and internally
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context)
        .clearSnackBars(); //*clearing all the undo messages we have on screen
    //*Showing a message after deleting an expense
    ScaffoldMessenger.of(context).showSnackBar(
      //*info message show down below at the screen
      SnackBar(
        duration: Duration(seconds: 40), //*duration of the message
        content: Text('Expense Deleted'), //*deletion alert
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _registeredExpenses.insert(expenseIndex,
                    expense); //*1. the undo will not add, but insert the item back into the list
              }); //*3. index value followed by the expense deleted before
            }),
      ), //*button to undo the action
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text(
          'No Expenses Found! Add some...'), //*message displayed when there are no expenses
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker App'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredExpenses),
          Expanded(
              //*prevents errors when dealing with diff kind of lists or columns
              child: mainContent),
        ],
      ),
    );
  }
}
