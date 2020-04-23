import 'package:flutter/material.dart';

//own imports

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  SingleCartProduct({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture),
        title: Text(cart_prod_name,),
        subtitle: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(child: Text("Size: $cart_prod_size")),
                Expanded(child: Text("Color:$cart_prod_color")),
                Expanded(child: Text("Price:$cart_prod_price")),
              ],
            ),
          ],
        ),
        trailing: Column(
          children: <Widget>[
            Expanded(child: Icon(Icons.delete_forever)),
          ],
        ),

      ),

    );
  }
}
