import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text("cont 1"),
            ),
          ),
          Container(
            height: 80,
            color: Colors.blue,
            child: Text("cont 2"),
          ),
        ],
      ),
    );
  }
}
