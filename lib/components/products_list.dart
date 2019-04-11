import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/product_details_page.dart';

class ProductsList extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<ProductsList> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "assets/products/blazer1.jpeg",
      "oldPrice": "340",
      "newPrice": "300"
    },
    {
      "name": "Red Dress",
      "picture": "assets/products/dress1.jpeg",
      "oldPrice": "120",
      "newPrice": "85"
    },
    {
      "name": "Blazer",
      "picture": "assets/products/blazer2.jpeg",
      "oldPrice": "340",
      "newPrice": "300"
    },
    {
      "name": "Black Dress",
      "picture": "assets/products/dress2.jpeg",
      "oldPrice": "120",
      "newPrice": "85"
    },
    {
      "name": "Strap Heels",
      "picture": "assets/products/hills1.jpeg",
      "oldPrice": "340",
      "newPrice": "300"
    },
    {
      "name": "Kitten Heels",
      "picture": "assets/products/hills2.jpeg",
      "oldPrice": "120",
      "newPrice": "85"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Product(
              productName: productList[index]['name'],
              productPic: productList[index]['picture'],
              productOldPrice: productList[index]['oldPrice'],
              productNewPrice: productList[index]['newPrice'],
            ),
          );
        },
      ),
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
        tag: Text("hero"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      productName: productName,
                      productPic: productPic,
                      productOldPrice: productOldPrice,
                      productNewPrice: productNewPrice,
                    ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            productName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Text(
                          "\u20B9$productNewPrice",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    )),
                child: Image.asset(productPic, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
