import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/blocs/cart.bloc.dart';
import '/models/cart-item.model.dart';
import '/models/product-list-item.model.dart';

class AddToCart extends StatelessWidget {
  final ProductListItemModel item;

  AddToCart({@required this.item});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);
    var cartItem = new CartItemModel(
      id: item.id,
      price: item.price,
      image: item.image,
      quantity: 1,
      title: item.title,
    );

    if (!bloc.itemInCart(cartItem)) {
      return Container(
        width: 80,
        height: 40,
        child:
            // ignore: deprecated_member_use
            FlatButton(
          color: Theme.of(context).primaryColor,
          child: Icon(Icons.add_shopping_cart),
          textColor: Colors.white,
          onPressed: () {
            bloc.add(
              cartItem,
            );
            final snackBar =
                SnackBar(content: Text('${item.title} adicionado'));
            // ignore: deprecated_member_use
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      );
    } else {
      return Container(
        width: 80,
        height: 40,
        child:
            // ignore: deprecated_member_use
            FlatButton(
          color: Colors.red,
          child: Icon(Icons.remove_shopping_cart),
          textColor: Colors.white,
          onPressed: () {
            bloc.remove(
              cartItem,
            );
            final snackBar = SnackBar(content: Text('${item.title} removido'));
            // ignore: deprecated_member_use
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      );
    }
  }
}
