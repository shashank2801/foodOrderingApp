import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodapp/widgets/categories.dart';
import 'package:foodapp/widgets/constants.dart';
import 'package:foodapp/widgets/featured_products.dart';
import 'package:foodapp/widgets/popular_products.dart';

import 'package:foodapp/widgets/title.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
  final screenheight = MediaQuery.of(context).size.height;
  final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                      title: "What would you like to eat?", size: 18),
                ),
                IconButton(
                    icon: Icon(Icons.notifications_none_rounded),
                    onPressed: () {}),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 1), blurRadius: 4),
                ],
              ),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: red,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Fulfill your cravings!",
                    border: InputBorder.none,
                  ),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: red,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                title: "Featured",
                size: 20,
                color: grey,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                title: "Popular",
                size: 20,
                color: grey,
              ),
            ),
            Popular(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: grey[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: screenheight*.05,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.store,
                  size: screenheight*.05,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_bag,
                  size: screenheight*.05,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.person,
                  size: screenheight*.05,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
