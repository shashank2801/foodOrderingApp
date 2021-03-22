import 'package:flutter/material.dart';
import 'package:foodapp/widgets/constants.dart';

class SmallButton extends StatelessWidget {
  final IconData icon;

  const SmallButton(IconData favorite, {Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
        color: red ),
      child: Icon(icon,size: 20,color: white,),
    );
  }
}