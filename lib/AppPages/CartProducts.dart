import 'package:flutter/material.dart';

//own imports
import 'package:petbaggo/AppPages/singlecartproduct.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var product_in_cart=[
    {
      "name": "Cat yellow",
      "picture": "images/products/p1.jpg",
      "price": 290.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },
    {
      "name": "Chicken receipe",
      "picture": "images/products/p2.jpg",
      "price": 190.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },
    {
      "name": "Cat velvet",
      "picture": "images/products/p3.jpg",
      "price": 250.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },
    {
      "name": "Chicken rec",
      "picture": "images/products/p4.jpg",
      "price": 100.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },
    {
      "name": "Cat yel",
      "picture": "images/products/p1.jpg",
      "price": 290.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },
    {
      "name": "Chicken ipe",
      "picture": "images/products/p2.jpg",
      "price": 190.00,
      "color":"Red",
      "size":"M",
      "qty": 2.00,
    },

  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: product_in_cart.length,
      itemBuilder: (context,index){
      return SingleCartProduct(
        cart_prod_name: product_in_cart[index]["name"],
        cart_prod_color: product_in_cart[index]["color"],
        cart_prod_picture: product_in_cart[index]["picture"],
        cart_prod_price: product_in_cart[index]["price"],
        cart_prod_qty: product_in_cart[index]["qty"],
        cart_prod_size: product_in_cart[index]["size"],
      );
      },
    );
  }
}
