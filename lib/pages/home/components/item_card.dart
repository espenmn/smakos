import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shopping/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey[300],
                ),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 14, color: Colors.amber[700]),
                  Icon(Icons.star, size: 14, color: Colors.amber[700]),
                  Icon(Icons.star, size: 14, color: Colors.amber[700]),
                  Icon(Icons.star_outline, size: 14, color: Colors.amber[700]),
                  Icon(Icons.star_outline, size: 14, color: Colors.amber[700]),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
