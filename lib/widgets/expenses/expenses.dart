import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/widgets/expenses/expenses_list.dart';

import 'package:flutter_expense_tracker/models/expense.dart';

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
      title: '2kg of Chicken Breast',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Marinate seasons',
      amount: 0.69,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: '2 Tickets to Japan',
      amount: 299.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
