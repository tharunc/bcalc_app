import 'package:bcalc_app/screens/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1C1C1C),
        scaffoldBackgroundColor: Color(0xFF1C1C1C),
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)

      ),

      debugShowCheckedModeBanner: false,
      home: Input(),
    );
  }
}

