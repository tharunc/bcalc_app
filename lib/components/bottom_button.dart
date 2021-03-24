import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap,this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(reverse: true),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Text(buttonTitle,style: GoogleFonts.lato(
                fontSize: 15.0,
                fontWeight: FontWeight.w900,
                color: Color(0xFF1C1C1C)),),
          ),


          height: 135,
          color: Color(0xFFFCC91C),


          // color: Color(0xFFA7A9AB),
        ),
      ),
    );
  }
}
