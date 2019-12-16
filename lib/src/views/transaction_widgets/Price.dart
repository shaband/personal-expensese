import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final double amount;
  Price({@required this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 2)),
      child: Text(
        '\$ ${amount.toStringAsFixed(2)}',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
      ),
    );
  }
}
