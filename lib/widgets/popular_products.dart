import 'package:flutter/material.dart';
import 'package:foodapp/data/popularList.dart';
import 'package:foodapp/widgets/title.dart';

import 'constants.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      height: MediaQuery.of(context).size.height*0.4,
      child: ListView.builder(
        //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: popularProductList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: grey[300], offset: Offset(1, 1), blurRadius: 4),
                  ],
                ),
                child: Stack(
                  children: [

                    
                    Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.028,),
                        Container(
                          height: MediaQuery.of(context).size.height * .30,
                          width: MediaQuery.of(context).size.width * .95,
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(popularProductList[index].img,fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SmallButton(Icons.favorite),
                              Container(
                                width: 23,
                                height: 23,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: red),
                                child: Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: white,
                                ),
                              ),
                              Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow[900]),
                                    CustomText(
                                      title: popularProductList[index].rating.toString(),
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: popularProductList[index].title + "\n",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: black,
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "by: ",
                                        style:
                                            TextStyle(fontSize: 16, color: black)),
                                    TextSpan(
                                        text: popularProductList[index].vendor,
                                        style:
                                            TextStyle(fontSize: 18, color: black)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(
                                  title: "₹"+ popularProductList[index].price.toString(),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
    );
  }
}
