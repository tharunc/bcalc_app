import 'package:bcalc_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bcalc_app/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold, color: Color(0xFFFCC91C)),
        ),
        backgroundColor: Color(0xFF1C1C1C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(18.0),
              alignment: Alignment.center,
              child: Text('YOUR RESULT',
                  style: GoogleFonts.roboto(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFFCC91C))),

          )),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: Color(0xFFFCC91C),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(interpretation.toUpperCase(),
                        style: GoogleFonts.lato(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF1C1C1C))),
                  ),
                  Text(bmiResult,
                      style: GoogleFonts.lato(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF1C1C1C))),
                  Text(resultText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF1C1C1C))),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
