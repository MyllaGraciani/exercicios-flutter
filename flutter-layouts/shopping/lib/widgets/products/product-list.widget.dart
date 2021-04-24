import 'package:flutter/material.dart';
import 'package:shopping/widgets/products/product-item.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: [
          ProductItem(
            image: "assets/product-10.png",
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            price: 150,
          ),
          ProductItem(
            image: "assets/product-1.png",
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            price: 755,
          ),
          ProductItem(
            image: "assets/product-2.png",
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            price: 450,
          ),
          ProductItem(
            image: "assets/product-3.png",
            title: "Smart Bluetooth Speaker",
            description: "Google Inc",
            price: 900,
          ),
        ],
      ),
    );
  }
}
