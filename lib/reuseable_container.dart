import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({@required this.cardColour, this.cardChild,this.onPress});
  final Color cardColour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}