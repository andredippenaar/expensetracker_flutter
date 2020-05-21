import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 123.99,
      date: DateTime.now(),
    ),
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        title: Text("Expense Tracker"),
        backgroundColor: Color(0xff121212),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              width: double.infinity,
              color: Color(0xff03dac6),
              height: 200,
              child: Center(child: Text("Chart")),
            ),
            elevation: 5,
          ),
          Card(
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
                        print(titleController.text);
                        print(amountController.text);
                      },
                      child: Text(
                        "Add Transaction",
                        style: TextStyle(color: Color(0xffbb86fc)),
                      ))
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                color: Color(0xff1f1b24),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: 140,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffbb86fc), width: 2)),
                      child: Text(
                        "R${tx.amount}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffbb86fc)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
