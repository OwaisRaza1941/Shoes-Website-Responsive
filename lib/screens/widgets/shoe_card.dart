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
    return LayoutBuilder(
      builder: (context, constraints) {
        // 👇 Responsive height logic
        double cardHeight;
        double cardWidht;
        if (constraints.maxWidth < 600) {
          cardHeight = 280;
          cardWidht = 150; // Mobile view
        } else if (constraints.maxWidth < 1000) {
          cardHeight = 320;
          cardWidht = 200; // Mobile view
          // Tablet view
        } else {
          cardHeight = size.height * 0.36;
          cardWidht = size.width * 0.15; // Mobile view
          // Desktop / Full screen
        }

        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {},
            child: Container(
              width: cardWidht,
              height: cardHeight,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Center(
                      child: Image.asset(imagePath, fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    text: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 5),
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
                        shape: const CircleBorder(),
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {},
                          child: const Padding(
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
            ),
          ),
        );
      },
    );
  }
}
