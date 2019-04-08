import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/cats/dress.png',
            imageCaption: "Dress",
          ),
          Category(
            imageLocation: 'assets/cats/formal.png',
            imageCaption: "Formal",
          ),
          Category(
            imageLocation: 'assets/cats/informal.png',
            imageCaption: "Informal",
          ),
          Category(
            imageLocation: 'assets/cats/jeans.png',
            imageCaption: "Jeans",
          ),
          Category(
            imageLocation: 'assets/cats/shoe.png',
            imageCaption: "Shoe",
          ),
          Category(
            imageLocation: 'assets/cats/tshirt.png',
            imageCaption: "T-shirt",
          ),
          Category(
            imageLocation: 'assets/cats/accessories.png',
            imageCaption: "Accessories",
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category({Key key, this.imageLocation, this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 80.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
