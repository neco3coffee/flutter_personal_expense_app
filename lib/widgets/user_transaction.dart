import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 3000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'new book',
      amount: 1000,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String title, num amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
