import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final valueController = TextEditingController();
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            TextButton(
              onPressed: () {
                print(titleController.text + valueController.text);
              },
              child: Text(
                "Nova Transação",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
