import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/widgets/constants.dart';

class Details extends StatefulWidget {
  final Product product;

  const Details({Key key, @required this.product}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState(product);
}

class _DetailsState extends State<Details> {
  final Product product;

  _DetailsState(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                //width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .3,
                child: Carousel(
                  images: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          product.image,
                          fit: BoxFit.fill,
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          product.image,
                          fit: BoxFit.fill,
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          product.image,
                          fit: BoxFit.fill,
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          product.image,
                          fit: BoxFit.fill,
                        )),
                  ],
                  dotBgColor: white,
                  dotColor: grey,
                  dotIncreasedColor: red,
                  dotIncreaseSize: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
