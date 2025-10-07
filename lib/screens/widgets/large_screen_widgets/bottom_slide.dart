import 'package:flutter/material.dart';

class BottomSlide extends StatelessWidget {
  const BottomSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageSize = 80; // default desktop image size
        double containerHeight = 80;

        // responsive breakpoints
        if (constraints.maxWidth > 950) {
          // Desktop
          imageSize = 100;
          containerHeight = 100;
        } else if (constraints.maxWidth > 600) {
          // Tablet
          imageSize = 100;
          containerHeight = 100;
        } else {
          // Mobile
          imageSize = 50;
          containerHeight = 100;
        }

        return Container(
          width: double.infinity,
          height: containerHeight,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              slideImages(
                imagePath: "assets/images/symbols.png",
                size: imageSize,
              ),
              slideImages(
                imagePath: "assets/images/shopping.png",
                size: imageSize,
              ),
              slideImages(imagePath: "assets/images/AJIO.png", size: imageSize),
              slideImages(
                imagePath: "assets/images/symbols.png",
                size: imageSize,
              ),
              slideImages(
                imagePath: "assets/images/shopping.png",
                size: imageSize,
              ),
              slideImages(imagePath: "assets/images/AJIO.png", size: imageSize),
            ],
          ),
        );
      },
    );
  }

  Widget slideImages({required String imagePath, required double size}) {
    return Image.asset(
      imagePath,
      width: size,
      height: size,
      fit: BoxFit.contain, // ensures image doesn't stretch
    );
  }
}
