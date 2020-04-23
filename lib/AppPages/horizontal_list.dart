import 'package:flutter/material.dart';

//own imports
import 'package:petbaggo/AppPages/categorylist.dart';


class HorizontalListCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categorylist(
            image_caption: 'Food',
            image_location: 'images/category/food.png',
          ),
          Categorylist(
            image_caption: 'Clothing',
            image_location: 'images/category/cloth.png',
          ),
          Categorylist(
            image_caption: 'Medical',
            image_location: 'images/category/med.png',
          ),
          Categorylist(
            image_caption: 'Toys',
            image_location: 'images/category/toys.png',
          ),
        ],
      ),
    );
  }
}
