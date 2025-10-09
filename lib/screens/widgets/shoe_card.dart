import 'package:flutter/material.dart';
import 'package:shoes_website/screens/widgets/custom_text.dart';

class ShoeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final Size size;

  const ShoeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double cardHeight;
    double cardWidth;

    if (screenWidth > 950) {
      cardHeight = 250;
      cardWidth = screenWidth * 0.15;
    } else if (screenWidth > 600) {
      cardHeight = size.height * 0.36;
      cardWidth = screenWidth * 0.25;
    } else {
      cardHeight = size.height * 0.36;
      cardWidth = screenWidth * 0.5;
    }

    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Center(child: Image.asset(imagePath, fit: BoxFit.contain)),
          ),
          SizedBox(height: 8),
          CustomText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: price,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              Material(
                color: Colors.black,
                shape: CircleBorder(),
                child: InkWell(
                  customBorder: CircleBorder(),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      Icons.arrow_outward,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
