import 'package:flutter/material.dart';
import 'package:second_flutter_app/src/models/Transaction.dart';
import 'package:second_flutter_app/src/views/transaction_widgets/Chart.dart';
import 'package:second_flutter_app/src/views/transaction_widgets/TransactionCards.dart';

class TrasactionView extends StatefulWidget {
  final List<Transaction> _transactions;
  TrasactionView(this._transactions);
  @override
  _TrasactionViewState createState() => _TrasactionViewState();
}

class _TrasactionViewState extends State<TrasactionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Chart(widget._transactions),
          TransactionCards(widget._transactions)
        ],
      ),
    );
  }
}
