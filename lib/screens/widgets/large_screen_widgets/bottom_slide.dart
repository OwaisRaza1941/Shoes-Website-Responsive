import 'package:flutter/material.dart';

class BottomSlide extends StatelessWidget {
  const BottomSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          slideImages(imagePath: "assets/images/symbols.png"),
          slideImages(imagePath: "assets/images/shopping.png"),
          slideImages(imagePath: "assets/images/AJIO.png"),
          slideImages(imagePath: "assets/images/symbols.png"),
          slideImages(imagePath: "assets/images/shopping.png"),
          slideImages(imagePath: "assets/images/AJIO.png"),
        ],
      ),
    );
  }

  Image slideImages({required String imagePath}) =>
      Image.asset(imagePath, width: 100, height: 100);
}
