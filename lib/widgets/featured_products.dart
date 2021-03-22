import 'package:flutter/material.dart';
import 'package:foodapp/data/productList.dart';
import 'package:foodapp/widgets/constants.dart';
import 'package:foodapp/widgets/title.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: featuredProductList.length,
          itemBuilder: (_, index) {
            int i;
            int j;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: grey[300], offset: Offset(1, 1), blurRadius: 4),
                  ],
                ),
                child: Column(
                  children: [
                    Image.network(
                      featuredProductList[index].image,
                      height: 140,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            title: featuredProductList[index].name,
                          ),
                          featuredProductList[index].wishList ? Icon(
                            Icons.favorite,
                            color: red,
                            size: 19,
                          ):
                            Icon(
                            Icons.favorite_border,
                            color: red,
                            size: 19,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(title: featuredProductList[index].rating.toString(), color: grey, size: 14),
                              SizedBox(
                                width: 2,
                              ),
                              for (i = 0; i < featuredProductList[index].rating; i++)
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: red,
                                ),
                              for (j = i; j < 5; j++)
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 14,
                                ),
                            ],
                          ),
                          CustomText(title: featuredProductList[index].price.toString(), size: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
