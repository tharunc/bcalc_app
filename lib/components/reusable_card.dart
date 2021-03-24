// import 'package:bcalc_app/input.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFFFCC91C);

class ReusableContainer extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  final Function onPress;


  ReusableContainer({this.colour, this.cardChild,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
