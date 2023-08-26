import 'package:bmi_calculator/constantname.dart';
import 'package:flutter/material.dart';
class ReuseColumn extends StatelessWidget {
  ReuseColumn({ required this.Icon1 ,required this.name });
  final IconData Icon1;
  final String name;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icon1,
          size: 80.0,),
        SizedBox(height: 15.0,),
        Text(name,style: kLabelTextstyle,)
      ],
    );
  }
}