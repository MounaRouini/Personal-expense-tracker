import 'package:flutter/material.dart';
import 'Transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(id: "1", title: "shoes", amount: 119.99, date: DateTime.now()),
    Transaction(id: "2", title: "food", amount: 20.00, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myfirstapp'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 7,
                child: Text("chart"),
              ),
            ),
            Card(
                elevation: 7,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: "title"),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "amount"),
                      ),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            "add transaction",
                            style: TextStyle(color: Colors.purpleAccent),
                          ))
                    ],
                  ),
                )),
            Column(
              children: transactions.map((tx) {
                return Card(
                    elevation: 7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "${tx.amount} DT",
                            style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.purple, width: 2)),
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 13),
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              DateFormat.yMMMd().format(tx.date),
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
