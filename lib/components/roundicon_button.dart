import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon, @required this.onPressed, this.onLongPressed,this.clr});

  final IconData icon;
  final Function onPressed;
  final Function onLongPressed;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: clr,),
      onLongPress: onLongPressed,
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 53.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFFFCC91C),
    );
  }
}
