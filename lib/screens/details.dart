import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/widgets/constants.dart';
import 'package:foodapp/widgets/title.dart';

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
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back,size: 24,),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Stack(
                          children: [
                            IconButton(
                                icon: Icon(Icons.shopping_bag,size: 35,),
                                onPressed: () {}),
                            Positioned(
                              right: 4,
                              top: 20,
                              child: Container(
                                width: 20,
                                decoration: BoxDecoration(
                                  color: red,
                                  borderRadius: BorderRadius.circular(100),
                                  
                                ),
                                child: CustomText(
                                  title: " 2",
                                  color: white,
                                  weight: FontWeight.bold,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                //width: MediaQuery.of(context).size.width,
                height: screenheight * .3,
                child: Stack(
                  children: [
                    Carousel(
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
                      autoplay: false,
                    ),
                    
                    Align(alignment: Alignment.bottomRight,),
                  ],
                ),
              ),
            ),
            CustomText(title: product.name,size: 26,weight: FontWeight.bold,),
            CustomText(title: "₹" + product.price.toString(),size: 22,color: red,weight: FontWeight.w600,),
            GestureDetector(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: red,
                ),
                child: CustomText(title: "Add to Cart",size: 22,color: white,),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
