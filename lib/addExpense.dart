import 'package:expense_manager/database.dart';
import 'package:expense_manager/model.dart';
import 'package:flutter/material.dart';

class ExpenseAdd extends StatefulWidget {
  @override
  _ExpenseAddState createState() => _ExpenseAddState();
}

class _ExpenseAddState extends State<ExpenseAdd> {
  String dropdownValue = 'Expense';
  String reason;
  int id, amount;

  String _value = DateTime.now().toString().split(" ")[0];

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2020)
    );
    if(picked != null) setState(() => _value = picked.toString().split(" ")[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Manager'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue,
                  elevation: 20,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),isExpanded: true,
                  items: <String>[
                    'Expense',
                    'Income',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                TextFormField(
                  onFieldSubmitted: (value) {
                    amount = value as int;
                  },
                  decoration: InputDecoration(labelText: 'Amount'),
                ),
                TextFormField(
                  onFieldSubmitted: (value) {
                    reason = value;
                  },
                  decoration: InputDecoration(labelText: 'Reason/Source'),
                ),
                Row(
                  children: <Widget>[
                    Text('Date:  ', style: TextStyle(fontSize: 20),),
                    Text(_value, style: TextStyle(fontSize: 20),),
                    IconButton(icon: Icon(Icons.calendar_today), onPressed: _selectDate)
                  ],
                ),
                RaisedButton(color: Colors.blue,
                  onPressed: () {
                    var expense = Expense(amount: 100, reason: 'abcd',date: 'datemnj');
                    var dbHelper = DBHelper();
                    dbHelper.addExpense(expense);
                  },
                  child: Text('Save',style: TextStyle(fontSize: 20,color: Colors.white),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
