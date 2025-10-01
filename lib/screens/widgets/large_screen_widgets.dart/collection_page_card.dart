import 'package:flutter/material.dart';
import 'package:shoes_website/screens/widgets/shoe_card.dart';

class CollectionPageCard extends StatelessWidget {
  const CollectionPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_back_ios),
          SizedBox(width: 30),
          ShoeCard(
            imagePath: "assets/images/collection_shoes3.png",
            price: "Rs. 2999.00",
            title: "Running canvas shoes",
          ),
          SizedBox(width: 20),
          ShoeCard(
            imagePath: "assets/images/collection_shoes2.png",
            price: "Rs. 2999.00",
            title: "Running causual shoes",
          ),
          SizedBox(width: 20),
          ShoeCard(
            imagePath: "assets/images/collection_shoes1.png",
            price: "Rs. 2999.00",
            title: "Casual nike shoes",
          ),
          SizedBox(width: 30),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
