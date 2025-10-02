import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 330,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: 100, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Slick",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
