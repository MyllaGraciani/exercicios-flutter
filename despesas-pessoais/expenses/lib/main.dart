import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas pessoais"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // card graficos
            Container(
              height: 100,
              child: Card(
                color: Colors.amber,
                child: Text("Gráfico"),
                elevation: 5,
              ),
            ),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
