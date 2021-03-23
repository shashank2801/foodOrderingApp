import 'package:flutter/material.dart';

class Popular{
    final int price;
  final String title;
  final String vendor;
  final String img;
  final double rating;

  Popular({this.rating,@required this.price, @required this.title, @required this.vendor, @required this.img});
}