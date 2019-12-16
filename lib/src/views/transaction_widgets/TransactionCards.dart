import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:second_flutter_app/src/models/Transaction.dart';
import 'package:second_flutter_app/src/views/transaction_widgets/Price.dart';

class TransactionCards extends StatefulWidget {
  final List<Transaction> transactions;
  TransactionCards(this.transactions);

  @override
  _TransactionCardsState createState() => _TransactionCardsState();
}

class _TransactionCardsState extends State<TransactionCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: Row(
                children: <Widget>[
                  Price(amount: widget.transactions[index].amount),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.transactions[index].name,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(DateFormat.yMEd()
                          .format(widget.transactions[index].date)),
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: widget.transactions.length,
        ));
  }
}
