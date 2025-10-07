import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 👇 Define responsive breakpoints
        double containerHeight = 350;
        double bgTextSize = 200;
        double imageSize = 450;
        double titleFont = 30;
        double subTitleFont = 24;
        double descFont = 14;
        double smallProductSize = 70;
        double paddingRight = 40;

        if (constraints.maxWidth > 950) {
          // 🖥 Desktop
          containerHeight = 380;
          bgTextSize = 200;
          imageSize = 480;
          titleFont = 30;
          subTitleFont = 24;
          descFont = 14;
          smallProductSize = 70;
        } else if (constraints.maxWidth > 600) {
          // 💻 Tablet
          containerHeight = 320;
          bgTextSize = 150;
          imageSize = 350;
          titleFont = 24;
          subTitleFont = 20;
          descFont = 13;
          smallProductSize = 60;
          paddingRight = 20;
        } else {
          // 📱 Mobile
          containerHeight = 250;
          bgTextSize = 100;
          imageSize = 250;
          titleFont = 15;
          subTitleFont = 14;
          descFont = 12;
          smallProductSize = 50;
          paddingRight = 12;
        }

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
                bottom: -40,
                left: 20,
                child: Text(
                  "Slick",
                  style: GoogleFonts.poppins(
                    fontSize: bgTextSize,
                    color: Colors.white.withOpacity(0.2),
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              // 🔹 Main Content
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 🖼 Left Image
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

                  // 📝 Right Side Text & Button
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingRight),
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
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            "lead the way",
                            style: GoogleFonts.poppins(
                              fontSize: subTitleFont,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                            style: GoogleFonts.poppins(
                              fontSize: descFont,
                              color: Colors.white70,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.pink,
                              padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxWidth < 600
                                    ? 20
                                    : 24,
                                vertical: constraints.maxWidth < 600 ? 10 : 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: constraints.maxWidth < 600 ? 12 : 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // 🔹 Small Product Images Row
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

  // ✅ Helper widget for small product preview
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
