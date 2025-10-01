import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFD8B92),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // 👇 Background text
          Positioned(
            bottom: -40,
            left: 20,
            child: Text(
              "Slick",
              style: GoogleFonts.poppins(
                fontSize: 200,
                color: Colors.white.withOpacity(0.2),
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          ),

          // 👇 Main content Row
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none, // 👈 overflow allow karega
                  children: [
                    Positioned(
                      bottom: -45,
                      left: -20,
                      child: Image.asset(
                        "assets/images/legs.png",
                        height: 500, // 👈 bada size
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              // Right side text + button
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Are you ready to",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "lead the way",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white70,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.pink,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Explore"),
                      ),

                      const SizedBox(height: 20),

                      // 👇 Small product previews
                      Row(
                        children: [
                          _smallProduct("assets/images/collection_shoes1.png"),
                          _smallProduct("assets/images/collection_shoes2.png"),
                          _smallProduct("assets/images/collection_shoes3.png"),
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
  }

  // ✅ helper widget for small product preview
  Widget _smallProduct(String path) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(path, fit: BoxFit.contain),
    );
  }
}
