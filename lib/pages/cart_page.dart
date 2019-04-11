import 'package:flutter/material.dart';
import 'package:shopping_cart/components/cart_list.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget appBar = AppBar(
    elevation: 0.1,
    backgroundColor: Colors.red,
    title: Text("Cart"),
    actions: <Widget>[
      IconButton(
          icon: Icon(Icons.search, color: Colors.white), onPressed: null),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: CartList(),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text("Total"),
                  subtitle: Text("\u20B9500"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text(
                    "Check out",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
