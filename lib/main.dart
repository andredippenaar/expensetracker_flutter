import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';

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
//  final titleController = TextEditingController();
//  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        title: Text(
          "Expense Tracker",
          style: TextStyle(color: Color(0xffbb86fc)),
        ),
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
          UserTransactions(),
        ],
      ),
    );
  }
}
