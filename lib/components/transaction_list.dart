import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
          child: Row(children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.purple,
                width: 2,
              )),
              padding: const EdgeInsets.all(10),
              child: Text(
                "R\$ ${transaction.value.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  DateFormat('d MMM y').format(transaction.date),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  DateFormat.Hm().format(transaction.date),
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ]),
        );
      }).toList(),
    );
  }
}
