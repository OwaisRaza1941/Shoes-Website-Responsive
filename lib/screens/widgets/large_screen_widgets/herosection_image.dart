import 'package:flutter/material.dart';

class HerosectionImage extends StatelessWidget {
  final Size size;
  const HerosectionImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    double imageWidth;

    // ✅ Responsive condition:
    if (size.width < 600) {
      // Mobile screen
      imageWidth = size.width * 0.8;
    } else if (size.width < 950) {
      // Tablet screen
      imageWidth = size.width * 0.35;
    } else {
      // Desktop screen
      imageWidth = size.width * 0.35;
    }

    return Column(
      children: [
        Image.asset(
          "assets/images/shoes_product.png",
          width: imageWidth,
          height: imageWidth, // same ratio rakha
          fit: BoxFit.contain,
        ),
         SizedBox(height: 10),
         Text(
          "Trend Slick Pro",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
         Text(
          "₹ 3999.00",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 76, 76, 76),
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
