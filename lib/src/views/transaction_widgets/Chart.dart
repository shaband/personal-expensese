import 'package:flutter/material.dart';
import 'package:second_flutter_app/src/models/Transaction.dart';

class Chart extends StatefulWidget {
  final List<Transaction> transactions;
  Chart(this.transactions);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        elevation: 20,
        child: Center(
          child: Text(
            'Charts',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
