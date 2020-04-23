import 'package:flutter/material.dart';

//own imports
import 'package:petbaggo/pages/productdetails.dart';

class SimilarSingleProd extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SimilarSingleProd({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (context) => ProductDetails(
                  prod_detail_name: prod_name,
                  prod_detail_old_price: prod_old_price,
                  prod_detail_picture: prod_picture,
                  prod_detail_price: prod_price,
                ),
              ),
            ),
            child: GridTile(
              child: Image.asset(prod_picture),
              footer: Container(
                color: Colors.white54,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.00,
                    ),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.00,
                    ),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.00,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
