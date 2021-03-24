import 'package:bcalc_app/components/bottom_button.dart';
import 'package:bcalc_app/components/roundicon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bcalc_app/components/reusable_card.dart';
import 'package:bcalc_app/components/icon_context.dart';
import 'package:bcalc_app/constants.dart';
import 'result_page.dart';
import 'package:bcalc_app/calculator_brain.dart';

const activeCardColor = Color(0xFF3B3F46);

enum Gender { Male, Female }

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  Gender selectedGender;
  int height = 175;
  int weight = 60;
  int age = 18;

  // REFERENCE FOR TERNARY OPERATORS AND ENUMS
  // Color maleCardColor;
  // Color femaleCardColor;
  //
  // void updateColor(Gender){
  //   if(Gender.Male){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if(Gender.Female){
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }else{
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1C1C1C),
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold, color: Color(0xFFFCC91C)),
            ),
          ),
          backgroundColor: Color(0xFF1C1C1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  colour: selectedGender == Gender.Male
                      ? activeCardColor
                      : kInactiveCardColor,
                  cardChild: IconContents(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  colour: selectedGender == Gender.Female
                      ? activeCardColor
                      : kInactiveCardColor,
                  cardChild: IconContents(
                    label: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusableContainer(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Color(0xFFFCC91C)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: GoogleFonts.lato(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFCC91C)),
                      ),
                      Text('cm',
                          style: GoogleFonts.lato(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFCC91C)))
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFFCC91C),
                      activeTrackColor: Color(0xFFFCC91C),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 11.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Color(0xFF1C1C1C),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableContainer(
                  colour: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Color(0xFFFCC91C)),
                      ),
                      Text(
                        weight.toString(),
                        style: GoogleFonts.lato(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFCC91C)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,clr: Color(0xFF1C1C1C),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              onLongPressed: () {
                                setState(() {
                                  weight = weight - 5;
                                });
                              }),
                          // FloatingActionButton(
                          //   backgroundColor: Color(0xFFFCC91C),
                          //   child: Icon(Icons.add,color: Colors.black,),
                          // ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,clr: Color(0xFF1C1C1C),
                            onPressed: () {
                              setState(
                                () {
                                  weight++;
                                },
                              );
                            },
                            onLongPressed: () {
                              setState(() {
                                weight = weight + 5;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: ReusableContainer(
                    colour: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Color(0xFFFCC91C),
                              letterSpacing: 3.0),
                        ),
                        Text(
                          age.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFCC91C)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,clr: Color(0xFF1C1C1C),
                              // clr: Color(0xFF1C1C1C),
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                              onLongPressed: () {
                                setState(() {
                                  age = age - 5;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,clr: Color(0xFF1C1C1C),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              onLongPressed: () {
                                setState(() {
                                  age = age + 5;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(buttonTitle: 'CALCULATE',onTap: (){

              CalculatorBrain calc = CalculatorBrain(height,weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculateBMI(),
                interpretation: calc.getResult(),
                resultText: calc.getInterpretation(),
              )));

            },),
          ],
        ));
  }
}


