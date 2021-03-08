import 'package:flutter/material.dart';
import 'package:foodapp/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.red,
      ),
      home: Home(),
    );
  }
}
