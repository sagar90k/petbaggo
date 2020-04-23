import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:petbaggo/AppPages/horizontal_list.dart';
import 'package:petbaggo/AppPages/products.dart';
import 'package:petbaggo/AppPages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget topImageCarousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/products/b2.jpg"),
        AssetImage("images/products/b3.jpg"),
        AssetImage("images/products/b4.jpg"),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(
        milliseconds: 1000,
      ),

      showIndicator: false,

    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            "petbaggo",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2),
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

        //Drawer Code
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: Text(
                    "Nilu Bhau",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  accountEmail: Text(
                    "nilu_at_wada@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Colors.white),
                  ),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/avatar.jpg'),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.red[500],
                  )),

              //Listtile begins
              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Home",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("My Account",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("My Orders",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()),);
                },
                child: new ListTile(
                  title: Text("Shopping Cart",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Favourites",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("Settings",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: new ListTile(
                  title: Text("About",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w200)),
                  leading: Icon(
                    Icons.info_outline,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
            topImageCarousel,

            new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text("Categories", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HorizontalListCat(),
            ),
            Divider(),
            new Padding(padding: const EdgeInsets.all(8.0),
                child: new Text("Recent Products", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)
            ),

            Container(
              height: 400.00,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
