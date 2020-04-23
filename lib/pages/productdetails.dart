import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petbaggo/AppPages/HomePage.dart';

//own imports
import 'package:petbaggo/AppPages/similarproducts.dart';
import 'package:petbaggo/AppPages/cart.dart';

class ProductDetails extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_price;
  final prod_detail_old_price;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_price,
    this.prod_detail_old_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: InkWell(
          child: Text(
            "petbaggo",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2),
            
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(),),);
          },
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()),);
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200.00,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              footer: new Container(
                color: Colors.white30,
                child: ListTile(
                    leading: Text(
                      widget.prod_detail_name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "\$${widget.prod_detail_price}",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )),
                        Expanded(
                            child: Text(
                          "\$${widget.prod_detail_old_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.lineThrough),
                        )),
                      ],
                    )),
              ),
            ),
          ),
//              ====== Row for buttons
          Row(
            children: <Widget>[
//              ======= Size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: Text(
                              "Choose size",
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                      )),
                    ],
                  ),
                ),
              ),

              //              ======= Size Color
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: Text(
                              "Choose Color",
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                      )),
                    ],
                  ),
                ),
              ),

              //              ======= Size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: Text(
                              "Choose Qty",
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //Second button
          //              ====== Row for buttons
          Row(
            children: <Widget>[
//              ======= Size button
              Expanded(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  color: Colors.black,
                  onPressed: null),

              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  color: Colors.red,
                  onPressed: null)
            ],
          ),
          Divider(),

          new ListTile(
              title: new Text(
                "Product Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              subtitle: new Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              )),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Velver"),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("BrandX"),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Never soak long"),
              ),
            ],
          ),
          Divider(),

          //similar Products
          new ListTile(
            title: new Text(
              "Similar Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
            ),
          ),

          Container(
            height: 320,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}
