import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const BoxDecoration gradeintDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(250, 250, 250, 1),
        Color.fromRGBO(181, 181, 181, 1),
      ],
    ),
  );

  static final logoNavBar = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    decoration: TextDecoration.none, // underline hatao
  );

  static final menuItem = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight:
        FontWeight.w400, // w100 bohot patla hota hai, w400 normal hota hai
    color: Colors.black,
    decoration: TextDecoration.none, // underline hatao
  );
  
}
