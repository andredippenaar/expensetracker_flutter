import 'user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff1f1b24),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffbb86fc)),
//  when the TextFormField in focused
                  ),
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Color(0xffbb86fc)),
                  filled: true,
                  fillColor: Color(0xff1f1b24)),
              style: TextStyle(color: Color(0xff03dac6)),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffbb86fc)),
//  when the TextFormField in focused
                  ),
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: Color(0xffbb86fc)),
                  filled: true,
                  fillColor: Color(0xff1f1b24)),
              style: TextStyle(color: Color(0xff03dac6)),
            ),
            FlatButton(
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Color(0xffbb86fc)),
                ))
          ],
        ),
      ),
    );
  }
}
