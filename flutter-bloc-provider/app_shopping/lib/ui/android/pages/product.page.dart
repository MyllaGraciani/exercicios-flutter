import 'package:flutter/material.dart';
import '/models/product-details.model.dart';
import '/repositories/product.repository.dart';
import '/ui/shared/widgets/shared/progress-indicator.widget.dart';

class ProductPage extends StatelessWidget {
  final String tag;
  final _repository = new ProductRepository();

  ProductPage({@required this.tag});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProductDetailsModel>(
      future: _repository.get(tag),
      builder: (context, snapshot) {
        ProductDetailsModel product = snapshot.data;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('Aguardando...');
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(
              child: GenericProgressIndicator(),
            );
          case ConnectionState.done:
            if (snapshot.hasError)
              return Center(
                child: Text("Não foi possível obter o produto"),
              );
            return content(product);
        }
        return null;
      },
    );
  }

  Widget content(ProductDetailsModel product) {
    return Scaffold(
      appBar: AppBar(),
      body: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.images.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Container(
            width: 200,
            child: Image.network(
              product.images[index],
            ),
          );
        },
      ),
    );
  }
}
