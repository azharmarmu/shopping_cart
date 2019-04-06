import 'package:flutter/material.dart';

class ProductsList extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<ProductsList> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": "340",
      "newPrice": "300"
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": "120",
      "newPrice": "85"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Product(
          productName: productList[index]['name'],
          productPic: productList[index]['picture'],
          productOldPrice: productList[index]['oldPrice'],
          productNewPrice: productList[index]['newPrice'],
        );
      },
    );
  }
}

class Product extends StatelessWidget {
  final productName;
  final productPic;
  final productOldPrice;
  final productNewPrice;

  const Product(
      {Key key,
      this.productName,
      this.productPic,
      this.productOldPrice,
      this.productNewPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      productName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      productNewPrice,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      productOldPrice,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(productPic, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
