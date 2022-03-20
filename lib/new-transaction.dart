import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTransaction;
  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    return Card(
        elevation: 7,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "title"),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "amount"),
                controller: amountController,
              ),
              FlatButton(
                  onPressed: () {
                    addTransaction(titleController.text,
                        double.parse(amountController.text));
                  },
                  child: Text(
                    "add transaction",
                    style: TextStyle(color: Colors.purpleAccent),
                  ))
            ],
          ),
        ));
  }
}
