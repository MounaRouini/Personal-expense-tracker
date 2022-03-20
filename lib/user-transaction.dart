import 'package:flutter/material.dart';
import './new-transaction.dart';
import './transaction.dart';
import './transaction-list.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> transactions = [
    Transaction(id: "1", title: "shoes", amount: 119.99, date: DateTime.now()),
    Transaction(id: "2", title: "food", amount: 20.00, date: DateTime.now())
  ];

  void addTransaction(String title, double amount) {
    var newtr = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      transactions.add(newtr);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(addTransaction), TransactionList(transactions)],
    );
  }
}
