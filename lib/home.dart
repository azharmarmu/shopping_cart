import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping_cart/components/horizontal_list.dart';
import 'package:shopping_cart/components/products_list.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget drawer = Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            accountName: Text("Azhar"),
            accountEmail: Text("marmuazhar@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Colors.blueGrey,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );

    Widget appBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.red,
      title: Text("Shop App"),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search, color: Colors.white), onPressed: null),
        IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: null)
      ],
    );

    Widget carouselWidget = Container(
      height: 175.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/m2.jpg'),
          AssetImage('assets/w1.jpeg'),
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );

    Widget categoryTitleWidget = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Categories",
        style: TextStyle(color: Colors.blue),
      ),
    );

    Widget recentProductTitleWidget = Padding(
      padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
      child: Text(
        "Recent Products",
        style: TextStyle(color: Colors.blue),
      ),
    );

    Widget body = ListView(
      children: <Widget>[
        carouselWidget,
        categoryTitleWidget,
        HorizontalList(),
        recentProductTitleWidget,
        //ProductsList()
      ],
    );

    return Scaffold(
      drawer: drawer,
      appBar: appBar,
      body: body,
    );
  }
}
