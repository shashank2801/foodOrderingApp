import 'package:flutter/material.dart';
import 'package:foodapp/data/categoryList.dart';
import 'package:foodapp/widgets/title.dart';

import 'constants.dart';



class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red[50],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.network(
                      categories[index].image,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: categories[index].name,
                  size: 16,
                  color: grey,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
