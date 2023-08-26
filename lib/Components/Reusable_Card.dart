import 'package:flutter/material.dart';
class Reusable extends StatelessWidget {
  final Widget CardChild;

  Reusable({required this.colour,required this.CardChild });

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: CardChild,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}