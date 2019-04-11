import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productName;
  final productPic;
  final productOldPrice;
  final productNewPrice;

  const ProductDetails(
      {Key key,
      this.productName,
      this.productPic,
      this.productOldPrice,
      this.productNewPrice})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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

    Widget body = ListView(
      children: <Widget>[
        Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.productPic),
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  widget.productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "\u20B9${widget.productOldPrice}",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "\u20B9${widget.productNewPrice}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Colors"),
                          content: Text("Choose a color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Quantity"),
                          content: Text("Choose the quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now")),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Divider(),
        ListTile(
          title: Text("Product Details"),
          subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
        Divider(),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 6.0, 6.0, 6.0),
              child: Text(
                "Product name",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(widget.productName),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 6.0, 6.0, 6.0),
              child: Text(
                "Product brand",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Product X"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 6.0, 6.0, 6.0),
              child: Text(
                "Product condition",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("NEW"),
            ),
          ],
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
