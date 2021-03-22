import 'package:flutter/material.dart';
import 'package:foodapp/widgets/categories.dart';
import 'package:foodapp/widgets/constants.dart';
import 'package:foodapp/widgets/featured_products.dart';
import 'package:foodapp/widgets/smallButton.dart';
import 'package:foodapp/widgets/title.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
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
            Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://images.eatthismuch.com/site_media/img/905635_Shamarie84_8b69ffe3-76ea-4809-b7c3-759d60919a27.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow[900]),
                              CustomText(
                                title: "4.6",
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("hello hiiii"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("hello"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  size: 24,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.store,
                  size: 24,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_bag,
                  size: 24,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.person,
                  size: 24,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
