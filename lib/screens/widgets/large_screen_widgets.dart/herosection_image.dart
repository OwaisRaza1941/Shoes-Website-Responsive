import 'package:flutter/material.dart';

class HerosectionImage extends StatelessWidget {
  final Size size;
  const HerosectionImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/shoes_product.png",
            width: size.width * 0.35,
            height: size.width * 0.35,
            fit: BoxFit.contain,
          ),
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
              color: const Color.fromARGB(255, 76, 76, 76),
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
