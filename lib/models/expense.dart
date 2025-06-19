import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

//*DateFormat class, provided by the intl package
final formatter = DateFormat.yMd();

//*yMd defines how the date will be formatted

const uuid = Uuid(); //*final variable uuid

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
}; //*mapa para manipular os icons

class Expense {
  //*creating a data model in order to organize the expenses properties
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //*initializer using v4 which is a string method

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  //*Adicionando metodo para formatar a data
  //? $ flutter pub add intl
  String get formattedDate {
    return formatter.format(date);
  }
}

//*Building the chart
class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});

  //*constructor function
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();
  //! REF

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;

    //*summing up all the expenses
    for (final expense in expenses) {
      sum += expense.amount; //*sum = sum + expense.amount;
    }

    return sum;
  }
}
