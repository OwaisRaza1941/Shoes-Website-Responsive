import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/collection_page_card.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/collectionpage_text.dart';

class CollectionPageMobile extends StatelessWidget {
  const CollectionPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      key: AppKeys.collectionKey,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 100, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CollectionpageText(size: size),
            ),
            SizedBox(height: 30),
            CollectionPageCard(size: size),
            SizedBox(height: 50),
            // HeroBanner(),
          ],
        ),
      ),
    );
  }
}
