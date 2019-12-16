import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_flutter_app/src/models/Transaction.dart';
import 'package:second_flutter_app/src/views/transactionView.dart';
import 'package:second_flutter_app/src/views/transaction_widgets/TransactionForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
      
          ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = <Transaction>[
    Transaction(amount: 11, date: DateTime.now(), id: 1, name: 't-shirt'),
    Transaction(amount: 44, date: DateTime.now(), id: 2, name: 'shoes'),
  ];
  _addTransaction(String transTitle, double transAmount) {
    Transaction transaction = Transaction(
        amount: transAmount,
        name: transTitle,
        date: DateTime.now(),
        id: new Random().nextInt(10000));
    setState(() {
      _transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('test 2'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                return _startAddTransactionModal(context);
              },
            )
          ],
        ),
        body: SingleChildScrollView(child: TrasactionView(_transactions)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            return _startAddTransactionModal(context);
          },
        ));
  }

  void _startAddTransactionModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: TransactionForm(_addTransaction),
        );
      },
    );
  }
}
