import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_website/screens/widgets/custom_buttons.dart';

class SocialSection extends StatelessWidget {
  final Size size;
  const SocialSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find Your\nSole Mate\nWith Us",
            style: GoogleFonts.poppins(
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            width: size.width * 0.2,
            child: Text(
              "Discover shoes that blend fashion and function.Breathable design, strong grip, and long-lasting comfort.Your go-to pair for every season and every step.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w100,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomButtons(
            btnForgratedColor: Colors.white,
            buttonBGColor: Colors.black,
            buttonText: "Shop Now",
          ),
        ],
      ),
    );
  }
}
