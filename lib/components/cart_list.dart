import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  var cartList = [
    {
      "name": "Blazer",
      "picture": "assets/products/blazer1.jpeg",
      "size": "M",
      "qty": "1",
      "color": "Black",
      "newPrice": "300"
    },
    {
      "name": "Red Dress",
      "picture": "assets/products/dress1.jpeg",
      "size": "XL",
      "qty": "1",
      "color": "Red",
      "newPrice": "85"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartList.length,
      itemBuilder: (context, index) {
        return CartProduct(
          productName: cartList[index]["name"],
          productPic: cartList[index]["picture"],
          productSize: cartList[index]["size"],
          productColor: cartList[index]["color"],
          productQty: cartList[index]["qty"],
          productNewPrice: cartList[index]["newPrice"],
        );
      },
    );
  }
}

class CartProduct extends StatelessWidget {
  final productName;
  final productPic;
  final productSize;
  final productQty;
  final productColor;
  final productNewPrice;

  const CartProduct(
      {Key key,
      this.productName,
      this.productPic,
      this.productSize,
      this.productQty,
      this.productColor,
      this.productNewPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(productName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Size: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Color: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productColor,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {
                increaseProductQty();
              },
            ),
            Text("$productQty"),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {
                decreaseProductQty();
              },
            ),
          ],
        ),
      ),
    );
  }

  void increaseProductQty() {}

  void decreaseProductQty() {}
}
