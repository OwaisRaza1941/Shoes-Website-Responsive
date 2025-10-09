import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerHeight = 350;
        double bgTextSize = 200;
        double imageSize = 450;
        double titleFont = 30;
        double subTitleFont = 24;
        double descFont = 14;
        double smallProductSize = 70;
        double horizontalPadding = 40;

        if (constraints.maxWidth > 950) {
          containerHeight = 380;
          bgTextSize = 200;
          imageSize = 480;
          titleFont = 30;
          subTitleFont = 24;
          descFont = 14;
          smallProductSize = 70;
          horizontalPadding = 40;
        } else if (constraints.maxWidth > 600) {
          containerHeight = 320;
          bgTextSize = 150;
          imageSize = 350;
          titleFont = 24;
          subTitleFont = 20;
          descFont = 13;
          smallProductSize = 60;
          horizontalPadding = 20;
        } else {
          containerHeight = 300;
          bgTextSize = 100;
          imageSize = 280;
          titleFont = 18;
          subTitleFont = 16;
          descFont = 12;
          smallProductSize = 50;
          horizontalPadding = 16;
        }

        // 📱 MOBILE Layout (column + bottom-aligned image)
        if (constraints.maxWidth < 600) {
          return Container(
            height: containerHeight,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFFD8B92),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                // 🔹 Background Text
                Positioned(
                  bottom: -20,
                  left: 20,
                  child: Text(
                    "Slick",
                    style: GoogleFonts.poppins(
                      fontSize: bgTextSize,
                      color: Colors.white.withOpacity(0.2),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                // 🔹 Bottom aligned image
                Positioned(
                  bottom: -30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      "assets/images/legs.png",
                      height: imageSize,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // 🔹 Text content above image
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Are you ready to",
                        style: GoogleFonts.poppins(
                          fontSize: titleFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "lead the way",
                        style: GoogleFonts.poppins(
                          fontSize: subTitleFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                        style: GoogleFonts.poppins(
                          fontSize: descFont,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.pink,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 10,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 🔹 Small products row
                      Row(
                        children: [
                          _smallProduct(
                            "assets/images/collection_shoes1.png",
                            smallProductSize,
                          ),
                          _smallProduct(
                            "assets/images/collection_shoes2.png",
                            smallProductSize,
                          ),
                          _smallProduct(
                            "assets/images/collection_shoes3.png",
                            smallProductSize,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        // 💻 / 🖥 DESKTOP & TABLET Layout
        return Container(
          height: containerHeight,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFFD8B92),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: -40,
                left: 20,
                child: Text(
                  "Slick",
                  style: GoogleFonts.poppins(
                    fontSize: bgTextSize,
                    color: Colors.white.withOpacity(0.2),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: -45,
                          left: -20,
                          child: Image.asset(
                            "assets/images/legs.png",
                            height: imageSize,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Are you ready to",
                            style: GoogleFonts.poppins(
                              fontSize: titleFont,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "lead the way",
                            style: GoogleFonts.poppins(
                              fontSize: subTitleFont,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                            style: GoogleFonts.poppins(
                              fontSize: descFont,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.pink,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              _smallProduct(
                                "assets/images/collection_shoes1.png",
                                smallProductSize,
                              ),
                              _smallProduct(
                                "assets/images/collection_shoes2.png",
                                smallProductSize,
                              ),
                              _smallProduct(
                                "assets/images/collection_shoes3.png",
                                smallProductSize,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _smallProduct(String path, double size) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(path, fit: BoxFit.contain),
    );
  }
}
