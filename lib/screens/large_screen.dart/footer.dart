import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_website/screens/widgets/custom_text.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 950;

        double leftWidth = isMobile ? size.width * 0.9 : size.width * 0.2;
        double middleWidth = isMobile ? size.width * 0.9 : size.width * 0.25;
        double rightWidth = isMobile ? size.width * 0.9 : size.width * 0.2;

        double horizontalPadding = isMobile ? 20 : 40;

        return Container(
          width: double.infinity,
          height: isMobile ? 600 : 300,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(
              top: 100,
              left: horizontalPadding,
              right: horizontalPadding,
            ),
            child: isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      footerLeftSection(leftWidth),
                      SizedBox(height: 40),
                      footerMiddleSection(middleWidth),
                      SizedBox(height: 40),
                      footerRightSection(rightWidth),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      footerLeftSection(leftWidth),
                      footerMiddleSection(middleWidth),
                      footerRightSection(rightWidth),
                    ],
                  ),
          ),
        );
      },
    );
  }

  // 🔸 Left Section
  Widget footerLeftSection(double width) {
    return SizedBox(
      width: width,
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
          const SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(FontAwesomeIcons.facebook, color: Colors.blue, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue, size: 30),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.instagram, color: Colors.purple, size: 30),
            ],
          ),
        ],
      ),
    );
  }

  // 🔸 Middle Section
  Widget footerMiddleSection(double width) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Subscribe to our newsletter",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              hintStyle: const TextStyle(color: Colors.black),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  // 🔸 Right Section
  Widget footerRightSection(double width) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Quick Links",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 20),
          CustomText(text: "Home", fontSize: 12, color: Colors.white),
          CustomText(text: "Shop", fontSize: 12, color: Colors.white),
          CustomText(text: "Collection", fontSize: 12, color: Colors.white),
          CustomText(text: "Contact", fontSize: 12, color: Colors.white),
          CustomText(text: "Privacy", fontSize: 12, color: Colors.white),
        ],
      ),
    );
  }
}
