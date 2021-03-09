import 'package:flutter/material.dart';
import 'package:foodapp/widgets/categories.dart';
import 'package:foodapp/widgets/constants.dart';
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
            Container(
              height: 230,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
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
                                color: grey[300],
                                offset: Offset(1, 1),
                                blurRadius: 4),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.network('https://static.toiimg.com/thumb/53205522.cms?imgsize=302803&width=800&height=800',height: 140,width: 200,fit: BoxFit.fill,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(title: "Butter Chicken",),
                                  Icon(Icons.favorite_border,color: red,size: 19,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    CustomText(title: "4.7",color: grey,size:14),
                                SizedBox(width: 2,),
                                  for(i=0;i<4;i++)
                                    Icon(Icons.star,size: 14,color: red,),
                                  
                                  for(j=i;j<5;j++)
                                    Icon(Icons.star,color: grey,size: 14,),
                                  ],),
                                    CustomText(title: '420/-',size: 16),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
