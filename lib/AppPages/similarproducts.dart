import 'package:flutter/material.dart';

//own imports
import 'package:petbaggo/AppPages/singleprod.dart';
import 'package:petbaggo/AppPages/similarsingleproduct.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
    {
      "name": "Cat yellow",
      "picture": "images/products/p1.jpg",
      "old_price": 300.00,
      "price": 290.00,
    },
    {
      "name": "Chicken receipe",
      "picture": "images/products/p2.jpg",
      "old_price": 200.00,
      "price": 190.00,
    },
    {
      "name": "Cat velvet",
      "picture": "images/products/p3.jpg",
      "old_price": 290.00,
      "price": 250.00,
    },
    {
      "name": "Chicken rec",
      "picture": "images/products/p4.jpg",
      "old_price": 200.00,
      "price": 100.00,
    },
    {
      "name": "Cat yel",
      "picture": "images/products/p1.jpg",
      "old_price": 300.00,
      "price": 290.00,
    },
    {
      "name": "Chicken ipe",
      "picture": "images/products/p2.jpg",
      "old_price": 200.00,
      "price": 190.00,
    },
    {
      "name": "Cat vet",
      "picture": "images/products/p3.jpg",
      "old_price": 290.00,
      "price": 250.00,
    },
    {
      "name": "Chicken rece",
      "picture": "images/products/p4.jpg",
      "old_price": 200.00,
      "price": 100.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProd(
            prod_name: product_list[index]['name'],
            prod_old_price: product_list[index]['old_price'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }

}
