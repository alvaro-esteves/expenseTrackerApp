import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});

  final void Function(Expense expense) onAddExpense;

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category
      .leisure; //*it should be updated whenever a new value is selected for category

  //* "?" indicates that it might be null
  //* "!" indicates that it wont be null

  //*creates an object that is atomized for handling user input
  //!Whenever using TextEditingCOntroller we need to tell flutter
  //!to delete the same when the widget is not used
  //!otherwise the same would live on in memory

  //*Function for the date button
  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    //!async and await are used with future codes such as date
    //?Await always goes in front of the code that yeilds the future
    //?This line forward will only be executed when the pickedDate value is available
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitExpenseData() {
    final enteredAmount = double.tryParse(_amountController.text);
    //*3.the amount needs to be converted into a number in order to perform the verification
    final amountIsInvalid = enteredAmount == null ||
        enteredAmount <=
            0; //*4. because tryparse yields null if an invalid amount is entered
    if (_titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      //*5. the condition is also added here because all input values must be valid
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Invalid Input'),
          content: Text(
              'Please make sure a valid title, amount, date and category is entered!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx); //*same ctx as the builder
              },
              child: Text('Okay'),
            ),
          ],
        ),
      );
      return; //*the return makes sure no code is executed
      //*2. showing error message if the amount is empty, a text that doesnt qualify as a number or if it is =< 0
    } //*1. validating the data seleted by the user

    //*Saving new expenses through widget, that gives access to the connected widget class, always used with state classes
    widget.onAddExpense(
      Expense(
          title: _titleController.text,
          amount: enteredAmount,
          date: _selectedDate!,
          category: _selectedCategory),
    );
    //*Closing the overlay after a new expense is added
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context)
        .viewInsets
        .bottom; //*getting the amount space taken up by the keyboard
    return SizedBox(
      height: double
          .infinity, //*makes sure the modal occupies the entire screen in landscape mode
      child: SingleChildScrollView(
        //*makes the modal scrollable when in landscape
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
          child: Column(
            children: [
              TextField(
                controller:
                    _titleController, //*triggered whenever the value in the textField changes
                maxLength: 50,
                decoration: InputDecoration(
                  label: Text('Title'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _amountController,
                      keyboardType: TextInputType
                          .number, //*since we're dealing with a number
                      decoration: InputDecoration(
                        prefixText: '\$ ',
                        label: Text('Amount'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //*rows inside of rows cause problems and for that we use expanded
                      children: [
                        Text(
                          _selectedDate == null
                              ? 'No date selected'
                              : formatter.format(_selectedDate!),
                        ),
                        IconButton(
                          onPressed: _presentDatePicker,
                          icon: Icon(Icons.calendar_month),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  DropdownButton(
                      value:
                          _selectedCategory, //*ensures the value stays on the category after selected
                      items: Category.values
                          .map(
                            (category) => DropdownMenuItem(
                              value: category,
                              child: Text(
                                //*child defines what will be shown on the screen
                                category.name.toUpperCase(),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value == null) {
                          return;
                        } //* if value is null, the category is never selected
                        setState(() {
                          _selectedCategory = value;
                        });
                      }), //* the value here is the one selected from the drop down
                  Spacer(),
                  ElevatedButton(
                    onPressed: _submitExpenseData,
                    child: Text('Save Expense'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context); //*makes cancel button close the overlay
                    },
                    child: Text('Cancel'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
