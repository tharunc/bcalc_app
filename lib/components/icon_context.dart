import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcalc_app/constants.dart';




class IconContents extends StatelessWidget {

  final IconData icon;
  final String label;

  IconContents({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFFFCC91C),

        ),
        SizedBox(
          height: 12.0,
        ),
        Text(label,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 18.0, color: Color(0xFFFCC91C)),)
      ],
    );
  }
}