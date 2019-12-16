import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final Function _addTransaction;
  TransactionForm(this._addTransaction);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'title',
                  ),
                  onSubmitted: (_) => _addNewTransaction()),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'amount',
                ),
                onSubmitted: (_) => _addNewTransaction(),
              ),
              FlatButton(
                child: Text('Add Transaction'),
                textColor: Colors.purple,
                onPressed: _addNewTransaction,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _addNewTransaction() {
    String title = titleController.text;
    double amount = double.parse(amountController.text);
    widget._addTransaction(title, amount);
    Navigator.of(context).pop();
  }
}
