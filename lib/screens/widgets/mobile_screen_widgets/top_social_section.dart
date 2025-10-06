import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_website/screens/widgets/hover_button.dart';

class TopSocialSection extends StatelessWidget {
  final Size size;
  const TopSocialSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find Your\nSole Mate\nWith Us",
            style: GoogleFonts.poppins(
              fontSize: size.width * 0.1,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: size.width * 0.8,
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
          HoverButton(text: "Shop Now", onPressed: () {}),
        ],
      ),
    );
  }
}
