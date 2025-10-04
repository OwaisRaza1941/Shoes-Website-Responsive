import 'package:flutter/material.dart';
import 'package:shoes_website/screens/widgets/custom_text.dart';
import 'package:shoes_website/screens/widgets/hover_button.dart';

class CollectionpageText extends StatelessWidget {
  final Size size;
  const CollectionpageText({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 30, height: 3, color: Colors.black),
              SizedBox(width: 5),
              CustomText(
                text: "Our trending shoes",
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomText(
            text: "Most Popular\nProducts",
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10),
          CustomText(
            text:
                "TEX membrane is a waterproof material used in shoes and boots to keep your feet comfortable.",
            fontSize: 14,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          HoverButton(text: "Explore", onPressed: () {}),
        ],
      ),
    );
  }
}
